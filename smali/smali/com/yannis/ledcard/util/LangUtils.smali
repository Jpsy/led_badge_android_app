.class public Lcom/yannis/ledcard/util/LangUtils;
.super Ljava/lang/Object;
.source "LangUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yannis/ledcard/util/LangUtils$ChartType;,
        Lcom/yannis/ledcard/util/LangUtils$FullNameStyle;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CHINESE_LANGUAGE:Ljava/lang/String;

.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_LANGUAGE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yannis/ledcard/util/LangUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    .line 14
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yannis/ledcard/util/LangUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    .line 16
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yannis/ledcard/util/LangUtils;->CHINESE_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charIsFromLib(C)Z
    .locals 8

    const-string v0, "abc"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x80

    if-ge p0, v3, :cond_0

    const/4 p0, 0x1

    const/4 v6, 0x0

    goto :goto_2

    .line 70
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-static {p0}, Lcom/yannis/ledcard/util/LangUtils;->isChinese(Ljava/lang/String;)Z

    move-result v3

    .line 72
    invoke-static {p0}, Lcom/yannis/ledcard/util/LangUtils;->isJapanese(Ljava/lang/String;)Z

    move-result v4

    .line 73
    invoke-static {p0}, Lcom/yannis/ledcard/util/LangUtils;->isKorean(Ljava/lang/String;)Z

    move-result v5

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    .line 75
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " isC = "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isJ = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_2
    if-nez p0, :cond_4

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 78
    :cond_4
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isAscll = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " is C J K = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getAdjustedFullNameStyle(I)I
    .locals 5

    .line 156
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-nez p0, :cond_3

    .line 158
    sget-object p0, Lcom/yannis/ledcard/util/LangUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v3

    .line 160
    :cond_0
    sget-object p0, Lcom/yannis/ledcard/util/LangUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    .line 162
    :cond_1
    sget-object p0, Lcom/yannis/ledcard/util/LangUtils;->CHINESE_LANGUAGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 v4, 0x2

    if-ne p0, v4, :cond_6

    .line 168
    sget-object p0, Lcom/yannis/ledcard/util/LangUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v3

    .line 170
    :cond_4
    sget-object p0, Lcom/yannis/ledcard/util/LangUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    return p0
.end method

.method private static guessCJKNameStyle(Ljava/lang/String;I)I
    .locals 4

    .line 213
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_2

    .line 215
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 216
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    invoke-static {v1}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    .line 218
    invoke-static {v2}, Lcom/yannis/ledcard/util/LangUtils;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x4

    return p0

    .line 221
    :cond_0
    invoke-static {v2}, Lcom/yannis/ledcard/util/LangUtils;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x5

    return p0

    .line 225
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method public static guessFullNameStyle(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    .line 122
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 123
    invoke-static {v3}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 124
    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    .line 126
    invoke-static {v2}, Lcom/yannis/ledcard/util/LangUtils;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 128
    invoke-static {v2}, Lcom/yannis/ledcard/util/LangUtils;->isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/yannis/ledcard/util/LangUtils;->guessCJKNameStyle(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 134
    :cond_1
    invoke-static {v2}, Lcom/yannis/ledcard/util/LangUtils;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p0, 0x4

    return p0

    .line 138
    :cond_2
    invoke-static {v2}, Lcom/yannis/ledcard/util/LangUtils;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 v2, 0x1

    .line 144
    :cond_4
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_5
    return v2
.end method

.method public static isCJK(Ljava/lang/String;)Z
    .locals 1

    .line 102
    invoke-static {p0}, Lcom/yannis/ledcard/util/LangUtils;->guessFullNameStyle(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1

    .line 188
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isChinese(Ljava/lang/String;)Z
    .locals 1

    .line 86
    invoke-static {p0}, Lcom/yannis/ledcard/util/LangUtils;->guessFullNameStyle(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 88
    invoke-static {p0}, Lcom/yannis/ledcard/util/LangUtils;->getAdjustedFullNameStyle(I)I

    move-result p0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isJapanese(Ljava/lang/String;)Z
    .locals 1

    .line 94
    invoke-static {p0}, Lcom/yannis/ledcard/util/LangUtils;->guessFullNameStyle(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 96
    invoke-static {p0}, Lcom/yannis/ledcard/util/LangUtils;->getAdjustedFullNameStyle(I)I

    move-result p0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1

    .line 206
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isKorean(Ljava/lang/String;)Z
    .locals 1

    .line 106
    invoke-static {p0}, Lcom/yannis/ledcard/util/LangUtils;->guessFullNameStyle(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 108
    invoke-static {p0}, Lcom/yannis/ledcard/util/LangUtils;->getAdjustedFullNameStyle(I)I

    move-result p0

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1

    .line 200
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1

    .line 180
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isUserFontLib(Ljava/lang/String;)Z
    .locals 10

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_d

    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_4

    :cond_0
    add-int/lit8 v6, v2, 0x1

    .line 31
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 32
    invoke-static {v6}, Lcom/yannis/ledcard/util/LangUtils;->isChinese(Ljava/lang/String;)Z

    move-result v7

    .line 33
    invoke-static {v6}, Lcom/yannis/ledcard/util/LangUtils;->isJapanese(Ljava/lang/String;)Z

    move-result v8

    .line 34
    invoke-static {v6}, Lcom/yannis/ledcard/util/LangUtils;->isKorean(Ljava/lang/String;)Z

    move-result v6

    const/16 v9, 0x3000

    if-lt v4, v9, :cond_1

    const v9, 0x9fff

    if-le v4, v9, :cond_7

    :cond_1
    const/16 v9, 0x391

    if-lt v4, v9, :cond_2

    const/16 v9, 0x3c9

    if-le v4, v9, :cond_7

    :cond_2
    const/16 v9, 0x410

    if-lt v4, v9, :cond_3

    const/16 v9, 0x451

    if-le v4, v9, :cond_7

    :cond_3
    const/16 v9, 0x2014

    if-lt v4, v9, :cond_4

    const/16 v9, 0x203b

    if-le v4, v9, :cond_7

    :cond_4
    const/16 v9, 0x2160

    if-lt v4, v9, :cond_5

    const/16 v9, 0x2193

    if-le v4, v9, :cond_7

    :cond_5
    const/16 v9, 0x1100

    if-lt v4, v9, :cond_6

    const/16 v9, 0x11ff

    if-le v4, v9, :cond_7

    :cond_6
    if-le v4, v5, :cond_7

    const v5, 0xff00

    if-ge v4, v5, :cond_7

    const/4 v4, 0x0

    goto :goto_1

    :cond_7
    const/4 v4, 0x1

    :goto_1
    if-nez v7, :cond_9

    if-nez v8, :cond_9

    if-nez v6, :cond_9

    if-eqz v4, :cond_8

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v4, 0x1

    :goto_3
    const/4 v5, 0x0

    :goto_4
    if-nez v5, :cond_b

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :cond_b
    :goto_5
    if-nez v3, :cond_c

    return v1

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_d
    return v3
.end method


# virtual methods
.method public checkText(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
