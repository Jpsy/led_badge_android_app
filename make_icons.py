"""
Generate the launcher icons and splash screen for LEDBadge+.

Three lines of text rendered in red on a light radial-gradient background,
post-processed with a halftone dot effect to evoke the LED-matrix aesthetic
of the upstream app's artwork.

Outputs go directly into the APKEditor `decoded/` tree so build.sh picks
them up on the next build.
"""

from PIL import Image, ImageDraw, ImageFont

RED  = (203, 55, 66)      # sampled from the original icon
BG_CENTER = (253, 253, 253)
BG_EDGE   = (180, 178, 178)
FONT_PATH = '/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf'

# Each launcher icon is square; splash is portrait.
ICON_SIZES = {
    'ldpi':   36,
    'mdpi':   48,
    'hdpi':   72,
    'xhdpi':  96,
    'xxhdpi': 144,
}
SPLASH_SIZE = (1080, 1920)


def radial_bg(w, h):
    """Light radial gradient: bright at the centre, darker at the corners."""
    img = Image.new('RGB', (w, h), BG_CENTER)
    px = img.load()
    cx, cy = w / 2, h / 2
    max_d = ((cx) ** 2 + (cy) ** 2) ** 0.5
    for y in range(h):
        for x in range(w):
            d = ((x - cx) ** 2 + (y - cy) ** 2) ** 0.5 / max_d
            t = min(1.0, d)
            px[x, y] = tuple(
                int(BG_CENTER[i] + (BG_EDGE[i] - BG_CENTER[i]) * t)
                for i in range(3)
            )
    return img


def fit_font(text, max_w, max_h):
    """Largest font size that fits `text` within max_w × max_h."""
    lo, hi = 4, max_h
    best = lo
    while lo <= hi:
        mid = (lo + hi) // 2
        f = ImageFont.truetype(FONT_PATH, mid)
        bbox = f.getbbox(text)
        w, h = bbox[2] - bbox[0], bbox[3] - bbox[1]
        if w <= max_w and h <= max_h:
            best = mid
            lo = mid + 1
        else:
            hi = mid - 1
    return ImageFont.truetype(FONT_PATH, best)


def draw_three_lines(img, lines, margin_frac=0.05):
    """Render the three lines vertically distributed in the image."""
    w, h = img.size
    margin_x = int(w * margin_frac)
    margin_y = int(h * margin_frac)
    avail_w = w - 2 * margin_x
    # Each line gets a third of the available height, minus a bit for inter-line padding.
    inter = max(2, int(h * 0.01))
    line_h = (h - 2 * margin_y - 2 * inter) // 3
    d = ImageDraw.Draw(img)
    for i, text in enumerate(lines):
        font = fit_font(text, avail_w, line_h)
        bbox = font.getbbox(text)
        tw, th = bbox[2] - bbox[0], bbox[3] - bbox[1]
        x = (w - tw) // 2 - bbox[0]
        y = margin_y + i * (line_h + inter) + (line_h - th) // 2 - bbox[1]
        d.text((x, y), text, font=font, fill=RED)
    return img


def halftone(img, cell):
    """LED-matrix-ish dot effect: each `cell`×`cell` block becomes a dot
    whose colour is the block's average, drawn on a white-dot background."""
    w, h = img.size
    out = Image.new('RGB', (w, h), (255, 255, 255))
    draw = ImageDraw.Draw(out)
    radius = cell * 0.42
    for cy in range(0, h, cell):
        for cx in range(0, w, cell):
            box = (cx, cy, min(cx + cell, w), min(cy + cell, h))
            region = img.crop(box)
            # average colour
            n = (box[2] - box[0]) * (box[3] - box[1])
            r = sum(p[0] for p in region.getdata()) // n
            g = sum(p[1] for p in region.getdata()) // n
            b = sum(p[2] for p in region.getdata()) // n
            ccx = cx + cell / 2
            ccy = cy + cell / 2
            draw.ellipse(
                (ccx - radius, ccy - radius, ccx + radius, ccy + radius),
                fill=(r, g, b),
            )
    return out


def make_image(size_w, size_h, lines, dot_cell):
    bg = radial_bg(size_w, size_h)
    drawn = draw_three_lines(bg, lines)
    return halftone(drawn, dot_cell)


def main():
    print('=== launcher icons ===')
    for density, size in ICON_SIZES.items():
        # Smaller cells = more dots per letter = better legibility on the
        # cramped 3-line layout. Cap at 1 px for the very small densities.
        cell = max(1, size // 36)
        img = make_image(size, size, ['LED', 'Badge', 'plus'], cell)
        path = f'decoded/resources/package_1/res/drawable-{density}/icon_launcher.png'
        img.save(path, 'PNG')
        print(f'  {density:7} {size}×{size}  cell={cell}  -> {path}')

    print('=== splash ===')
    sw, sh = SPLASH_SIZE
    img = make_image(sw, sh, ['LED', 'Badge', 'plus'], dot_cell=18)
    path = 'decoded/resources/package_1/res/drawable-xhdpi/start.png'
    img.save(path, 'PNG')
    print(f'  splash   {sw}×{sh}  -> {path}')


if __name__ == '__main__':
    main()
