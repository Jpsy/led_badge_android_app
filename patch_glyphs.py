"""
Read glyph definitions from umlaut_glyphs.txt and patch them into ASC11.

The file format is documented in the file's own header. Each glyph block
starts with "[slot 0xNN char]" and contains 11 rows of 8 chars ('#' or '.').
"""

import re
import sys

SRC = 'extracted/assets/ASC11'
DST = 'extracted/assets/ASC11.patched'
DEFS = 'umlaut_glyphs.txt'

HEADER_RE = re.compile(r'^\[slot\s+0x([0-9A-Fa-f]+)\s+(\S+)\]\s*$')
PIXEL_ROW_RE = re.compile(r'^[#.]{8}$')

def parse_glyphs(path):
    glyphs = {}      # slot -> (char, [11 bytes])
    current_slot = None
    current_char = None
    current_rows = []

    def finalize():
        if current_slot is None:
            return
        if len(current_rows) != 11:
            sys.exit(f"slot 0x{current_slot:02X} ({current_char}): expected 11 rows, got {len(current_rows)}")
        bytes_ = []
        for row_idx, row in enumerate(current_rows):
            if len(row) != 8:
                sys.exit(f"slot 0x{current_slot:02X} row {row_idx}: expected 8 chars, got {len(row)} ({row!r})")
            v = 0
            for col, ch in enumerate(row):
                if ch == '#':
                    v |= 1 << (7 - col)
                elif ch != '.':
                    sys.exit(f"slot 0x{current_slot:02X} row {row_idx} col {col}: invalid char {ch!r}")
            bytes_.append(v)
        glyphs[current_slot] = (current_char, bytes_)

    with open(path) as f:
        for raw in f:
            stripped = raw.rstrip('\n').strip()
            if not stripped:
                continue
            m = HEADER_RE.match(stripped)
            if m:
                finalize()
                current_slot = int(m.group(1), 16)
                current_char = m.group(2)
                current_rows = []
                continue
            # Pixel row: exactly 8 chars of '#' or '.'. Anything else is a comment.
            if PIXEL_ROW_RE.match(stripped):
                current_rows.append(stripped)

    finalize()
    return glyphs

def render(bytes_):
    for b in bytes_:
        print('  ' + ''.join('#' if (b >> (7 - i)) & 1 else '.' for i in range(8)))

def main():
    glyphs = parse_glyphs(DEFS)

    with open(SRC, 'rb') as f:
        data = bytearray(f.read())
    if len(data) != 256 * 11:
        sys.exit(f"unexpected ASC11 size: {len(data)}")

    print('=== Patching slots ===')
    for slot in sorted(glyphs):
        ch, bytes_ = glyphs[slot]
        print(f"\nslot 0x{slot:02X} ({ch}):")
        render(bytes_)
        for i, b in enumerate(bytes_):
            data[slot * 11 + i] = b

    with open(DST, 'wb') as f:
        f.write(bytes(data))
    print(f"\nWrote {DST} ({len(data)} bytes)")

if __name__ == '__main__':
    main()
