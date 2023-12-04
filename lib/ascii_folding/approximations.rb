# frozen_string_literal: true

module AsciiFolding
  APPROXIMATIONS = {
    "À" => "A",
    "Á" => "A",
    "Â" => "A",
    "Ã" => "A",
    "Ä" => "A",
    "Å" => "A",
    "Ā" => "A",
    "Ă" => "A",
    "Ą" => "A",
    "Ə" => "A",
    "Ǎ" => "A",
    "Ǟ" => "A",
    "Ǡ" => "A",
    "Ǻ" => "A",
    "Ȁ" => "A",
    "Ȃ" => "A",
    "Ȧ" => "A",
    "Ⱥ" => "A",
    "ᴀ" => "A",
    "Ḁ" => "A",
    "Ạ" => "A",
    "Ả" => "A",
    "Ấ" => "A",
    "Ầ" => "A",
    "Ẩ" => "A",
    "Ẫ" => "A",
    "Ậ" => "A",
    "Ắ" => "A",
    "Ằ" => "A",
    "Ẳ" => "A",
    "Ẵ" => "A",
    "Ặ" => "A",
    "Ⓐ" => "A",
    "Ａ" => "A",
    "à" => "a",
    "á" => "a",
    "â" => "a",
    "ã" => "a",
    "ä" => "a",
    "å" => "a",
    "ā" => "a",
    "ă" => "a",
    "ą" => "a",
    "ǎ" => "a",
    "ǟ" => "a",
    "ǡ" => "a",
    "ǻ" => "a",
    "ȁ" => "a",
    "ȃ" => "a",
    "ȧ" => "a",
    "ɐ" => "a",
    "ə" => "a",
    "ɚ" => "a",
    "ᶏ" => "a",
    "ᶕ" => "a",
    "ḁ" => "a",
    "ẚ" => "a",
    "ạ" => "a",
    "ả" => "a",
    "ấ" => "a",
    "ầ" => "a",
    "ẩ" => "a",
    "ẫ" => "a",
    "ậ" => "a",
    "ắ" => "a",
    "ằ" => "a",
    "ẳ" => "a",
    "ẵ" => "a",
    "ặ" => "a",
    "ₐ" => "a",
    "ₔ" => "a",
    "ⓐ" => "a",
    "ⱥ" => "a",
    "Ɐ" => "a",
    "ａ" => "a",
    "Ꜳ" => "AA",
    "Æ" => "AE",
    "Ǣ" => "AE",
    "Ǽ" => "AE",
    "ᴁ" => "AE",
    "Ꜵ" => "AO",
    "Ꜷ" => "AU",
    "Ꜹ" => "AV",
    "Ꜻ" => "AV",
    "Ꜽ" => "AY",
    "⒜" => "(a)",
    "ꜳ" => "aa",
    "æ" => "ae",
    "ǣ" => "ae",
    "ǽ" => "ae",
    "ᴂ" => "ae",
    "ꜵ" => "ao",
    "ꜷ" => "au",
    "ꜹ" => "av",
    "ꜻ" => "av",
    "ꜽ" => "ay",
    "Ɓ" => "B",
    "Ƃ" => "B",
    "Ƀ" => "B",
    "ʙ" => "B",
    "ᴃ" => "B",
    "Ḃ" => "B",
    "Ḅ" => "B",
    "Ḇ" => "B",
    "Ⓑ" => "B",
    "Ｂ" => "B",
    "ƀ" => "b",
    "ƃ" => "b",
    "ɓ" => "b",
    "ᵬ" => "b",
    "ᶀ" => "b",
    "ḃ" => "b",
    "ḅ" => "b",
    "ḇ" => "b",
    "ⓑ" => "b",
    "ｂ" => "b",
    "⒝" => "(b)",
    "Ç" => "C",
    "Ć" => "C",
    "Ĉ" => "C",
    "Ċ" => "C",
    "Č" => "C",
    "Ƈ" => "C",
    "Ȼ" => "C",
    "ʗ" => "C",
    "ᴄ" => "C",
    "Ḉ" => "C",
    "Ⓒ" => "C",
    "Ｃ" => "C",
    "ç" => "c",
    "ć" => "c",
    "ĉ" => "c",
    "ċ" => "c",
    "č" => "c",
    "ƈ" => "c",
    "ȼ" => "c",
    "ɕ" => "c",
    "ḉ" => "c",
    "ↄ" => "c",
    "ⓒ" => "c",
    "Ꜿ" => "c",
    "ꜿ" => "c",
    "ｃ" => "c",
    "⒞" => "(c)",
    "Ð" => "D",
    "Ď" => "D",
    "Đ" => "D",
    "Ɖ" => "D",
    "Ɗ" => "D",
    "Ƌ" => "D",
    "ᴅ" => "D",
    "ᴆ" => "D",
    "Ḋ" => "D",
    "Ḍ" => "D",
    "Ḏ" => "D",
    "Ḑ" => "D",
    "Ḓ" => "D",
    "Ⓓ" => "D",
    "Ꝺ" => "D",
    "Ｄ" => "D",
    "ð" => "d",
    "ď" => "d",
    "đ" => "d",
    "ƌ" => "d",
    "ȡ" => "d",
    "ɖ" => "d",
    "ɗ" => "d",
    "ᵭ" => "d",
    "ᶁ" => "d",
    "ᶑ" => "d",
    "ḋ" => "d",
    "ḍ" => "d",
    "ḏ" => "d",
    "ḑ" => "d",
    "ḓ" => "d",
    "ⓓ" => "d",
    "ꝺ" => "d",
    "ｄ" => "d",
    "Ǆ" => "DZ",
    "Ǳ" => "DZ",
    "ǅ" => "Dz",
    "ǲ" => "Dz",
    "⒟" => "(d)",
    "ȸ" => "db",
    "ǆ" => "dz",
    "ǳ" => "dz",
    "ʣ" => "dz",
    "ʥ" => "dz",
    "È" => "E",
    "É" => "E",
    "Ê" => "E",
    "Ë" => "E",
    "Ē" => "E",
    "Ĕ" => "E",
    "Ė" => "E",
    "Ę" => "E",
    "Ě" => "E",
    "Ǝ" => "E",
    "Ɛ" => "E",
    "Ȅ" => "E",
    "Ȇ" => "E",
    "Ȩ" => "E",
    "Ɇ" => "E",
    "ᴇ" => "E",
    "Ḕ" => "E",
    "Ḗ" => "E",
    "Ḙ" => "E",
    "Ḛ" => "E",
    "Ḝ" => "E",
    "Ẹ" => "E",
    "Ẻ" => "E",
    "Ẽ" => "E",
    "Ế" => "E",
    "Ề" => "E",
    "Ể" => "E",
    "Ễ" => "E",
    "Ệ" => "E",
    "Ⓔ" => "E",
    "ⱻ" => "E",
    "Ｅ" => "E",
    "è" => "e",
    "é" => "e",
    "ê" => "e",
    "ë" => "e",
    "ē" => "e",
    "ĕ" => "e",
    "ė" => "e",
    "ę" => "e",
    "ě" => "e",
    "ǝ" => "e",
    "ȅ" => "e",
    "ȇ" => "e",
    "ȩ" => "e",
    "ɇ" => "e",
    "ɘ" => "e",
    "ɛ" => "e",
    "ɜ" => "e",
    "ɝ" => "e",
    "ɞ" => "e",
    "ʚ" => "e",
    "ᴈ" => "e",
    "ᶒ" => "e",
    "ᶓ" => "e",
    "ᶔ" => "e",
    "ḕ" => "e",
    "ḗ" => "e",
    "ḙ" => "e",
    "ḛ" => "e",
    "ḝ" => "e",
    "ẹ" => "e",
    "ẻ" => "e",
    "ẽ" => "e",
    "ế" => "e",
    "ề" => "e",
    "ể" => "e",
    "ễ" => "e",
    "ệ" => "e",
    "ₑ" => "e",
    "ⓔ" => "e",
    "ⱸ" => "e",
    "ｅ" => "e",
    "⒠" => "(e)",
    "Ƒ" => "F",
    "Ḟ" => "F",
    "Ⓕ" => "F",
    "ꜰ" => "F",
    "Ꝼ" => "F",
    "ꟻ" => "F",
    "Ｆ" => "F",
    "ƒ" => "f",
    "ᵮ" => "f",
    "ᶂ" => "f",
    "ḟ" => "f",
    "ẛ" => "f",
    "ⓕ" => "f",
    "ꝼ" => "f",
    "ｆ" => "f",
    "⒡" => "(f)",
    "ﬀ" => "ff",
    "ﬃ" => "ffi",
    "ﬄ" => "ffl",
    "ﬁ" => "fi",
    "ﬂ" => "fl",
    "Ĝ" => "G",
    "Ğ" => "G",
    "Ġ" => "G",
    "Ģ" => "G",
    "Ɠ" => "G",
    "Ǥ" => "G",
    "ǥ" => "G",
    "Ǧ" => "G",
    "ǧ" => "G",
    "Ǵ" => "G",
    "ɢ" => "G",
    "ʛ" => "G",
    "Ḡ" => "G",
    "Ⓖ" => "G",
    "Ᵹ" => "G",
    "Ꝿ" => "G",
    "Ｇ" => "G",
    "ĝ" => "g",
    "ğ" => "g",
    "ġ" => "g",
    "ģ" => "g",
    "ǵ" => "g",
    "ɠ" => "g",
    "ɡ" => "g",
    "ᵷ" => "g",
    "ᵹ" => "g",
    "ᶃ" => "g",
    "ḡ" => "g",
    "ⓖ" => "g",
    "ꝿ" => "g",
    "ｇ" => "g",
    "⒢" => "(g)",
    "Ĥ" => "H",
    "Ħ" => "H",
    "Ȟ" => "H",
    "ʜ" => "H",
    "Ḣ" => "H",
    "Ḥ" => "H",
    "Ḧ" => "H",
    "Ḩ" => "H",
    "Ḫ" => "H",
    "Ⓗ" => "H",
    "Ⱨ" => "H",
    "Ⱶ" => "H",
    "Ｈ" => "H",
    "ĥ" => "h",
    "ħ" => "h",
    "ȟ" => "h",
    "ɥ" => "h",
    "ɦ" => "h",
    "ʮ" => "h",
    "ʯ" => "h",
    "ḣ" => "h",
    "ḥ" => "h",
    "ḧ" => "h",
    "ḩ" => "h",
    "ḫ" => "h",
    "ẖ" => "h",
    "ⓗ" => "h",
    "ⱨ" => "h",
    "ⱶ" => "h",
    "ｈ" => "h",
    "Ƕ" => "HV",
    "⒣" => "(h)",
    "ƕ" => "hv",
    "Ì" => "I",
    "Í" => "I",
    "Î" => "I",
    "Ï" => "I",
    "Ĩ" => "I",
    "Ī" => "I",
    "Ĭ" => "I",
    "Į" => "I",
    "İ" => "I",
    "Ɩ" => "I",
    "Ɨ" => "I",
    "Ǐ" => "I",
    "Ȉ" => "I",
    "Ȋ" => "I",
    "ɪ" => "I",
    "ᵻ" => "I",
    "Ḭ" => "I",
    "Ḯ" => "I",
    "Ỉ" => "I",
    "Ị" => "I",
    "Ⓘ" => "I",
    "ꟾ" => "I",
    "Ｉ" => "I",
    "ì" => "i",
    "í" => "i",
    "î" => "i",
    "ï" => "i",
    "ĩ" => "i",
    "ī" => "i",
    "ĭ" => "i",
    "į" => "i",
    "ı" => "i",
    "ǐ" => "i",
    "ȉ" => "i",
    "ȋ" => "i",
    "ɨ" => "i",
    "ᴉ" => "i",
    "ᵢ" => "i",
    "ᵼ" => "i",
    "ᶖ" => "i",
    "ḭ" => "i",
    "ḯ" => "i",
    "ỉ" => "i",
    "ị" => "i",
    "ⁱ" => "i",
    "ⓘ" => "i",
    "ｉ" => "i",
    "Ĳ" => "IJ",
    "⒤" => "(i)",
    "ĳ" => "ij",
    "Ĵ" => "J",
    "Ɉ" => "J",
    "ᴊ" => "J",
    "Ⓙ" => "J",
    "Ｊ" => "J",
    "ĵ" => "j",
    "ǰ" => "j",
    "ȷ" => "j",
    "ɉ" => "j",
    "ɟ" => "j",
    "ʄ" => "j",
    "ʝ" => "j",
    "ⓙ" => "j",
    "ⱼ" => "j",
    "ｊ" => "j",
    "⒥" => "(j)",
    "Ķ" => "K",
    "Ƙ" => "K",
    "Ǩ" => "K",
    "ᴋ" => "K",
    "Ḱ" => "K",
    "Ḳ" => "K",
    "Ḵ" => "K",
    "Ⓚ" => "K",
    "Ⱪ" => "K",
    "Ꝁ" => "K",
    "Ꝃ" => "K",
    "Ꝅ" => "K",
    "Ｋ" => "K",
    "ķ" => "k",
    "ƙ" => "k",
    "ǩ" => "k",
    "ʞ" => "k",
    "ᶄ" => "k",
    "ḱ" => "k",
    "ḳ" => "k",
    "ḵ" => "k",
    "ⓚ" => "k",
    "ⱪ" => "k",
    "ꝁ" => "k",
    "ꝃ" => "k",
    "ꝅ" => "k",
    "ｋ" => "k",
    "⒦" => "(k)",
    "Ĺ" => "L",
    "Ļ" => "L",
    "Ľ" => "L",
    "Ŀ" => "L",
    "Ł" => "L",
    "Ƚ" => "L",
    "ʟ" => "L",
    "ᴌ" => "L",
    "Ḷ" => "L",
    "Ḹ" => "L",
    "Ḻ" => "L",
    "Ḽ" => "L",
    "Ⓛ" => "L",
    "Ⱡ" => "L",
    "Ɫ" => "L",
    "Ꝇ" => "L",
    "Ꝉ" => "L",
    "Ꞁ" => "L",
    "Ｌ" => "L",
    "ĺ" => "l",
    "ļ" => "l",
    "ľ" => "l",
    "ŀ" => "l",
    "ł" => "l",
    "ƚ" => "l",
    "ȴ" => "l",
    "ɫ" => "l",
    "ɬ" => "l",
    "ɭ" => "l",
    "ᶅ" => "l",
    "ḷ" => "l",
    "ḹ" => "l",
    "ḻ" => "l",
    "ḽ" => "l",
    "ⓛ" => "l",
    "ⱡ" => "l",
    "ꝇ" => "l",
    "ꝉ" => "l",
    "ꞁ" => "l",
    "ｌ" => "l",
    "Ǉ" => "LJ",
    "Ỻ" => "LL",
    "ǈ" => "Lj",
    "⒧" => "(l)",
    "ǉ" => "lj",
    "ỻ" => "ll",
    "ʪ" => "ls",
    "ʫ" => "lz",
    "Ɯ" => "M",
    "ᴍ" => "M",
    "Ḿ" => "M",
    "Ṁ" => "M",
    "Ṃ" => "M",
    "Ⓜ" => "M",
    "Ɱ" => "M",
    "ꟽ" => "M",
    "ꟿ" => "M",
    "Ｍ" => "M",
    "ɯ" => "m",
    "ɰ" => "m",
    "ɱ" => "m",
    "ᵯ" => "m",
    "ᶆ" => "m",
    "ḿ" => "m",
    "ṁ" => "m",
    "ṃ" => "m",
    "ⓜ" => "m",
    "ｍ" => "m",
    "⒨" => "(m)",
    "Ñ" => "N",
    "Ń" => "N",
    "Ņ" => "N",
    "Ň" => "N",
    "Ŋ" => "N",
    "Ɲ" => "N",
    "Ǹ" => "N",
    "Ƞ" => "N",
    "ɴ" => "N",
    "ᴎ" => "N",
    "Ṅ" => "N",
    "Ṇ" => "N",
    "Ṉ" => "N",
    "Ṋ" => "N",
    "Ⓝ" => "N",
    "Ｎ" => "N",
    "ñ" => "n",
    "ń" => "n",
    "ņ" => "n",
    "ň" => "n",
    "ŉ" => "n",
    "ŋ" => "n",
    "ƞ" => "n",
    "ǹ" => "n",
    "ȵ" => "n",
    "ɲ" => "n",
    "ɳ" => "n",
    "ᵰ" => "n",
    "ᶇ" => "n",
    "ṅ" => "n",
    "ṇ" => "n",
    "ṉ" => "n",
    "ṋ" => "n",
    "ⁿ" => "n",
    "ⓝ" => "n",
    "ｎ" => "n",
    "Ǌ" => "NJ",
    "ǋ" => "Nj",
    "⒩" => "(n)",
    "ǌ" => "nj",
    "Ò" => "O",
    "Ó" => "O",
    "Ô" => "O",
    "Õ" => "O",
    "Ö" => "O",
    "Ø" => "O",
    "Ō" => "O",
    "Ŏ" => "O",
    "Ő" => "O",
    "Ɔ" => "O",
    "Ɵ" => "O",
    "Ơ" => "O",
    "Ǒ" => "O",
    "Ǫ" => "O",
    "Ǭ" => "O",
    "Ǿ" => "O",
    "Ȍ" => "O",
    "Ȏ" => "O",
    "Ȫ" => "O",
    "Ȭ" => "O",
    "Ȯ" => "O",
    "Ȱ" => "O",
    "ᴏ" => "O",
    "ᴐ" => "O",
    "Ṍ" => "O",
    "Ṏ" => "O",
    "Ṑ" => "O",
    "Ṓ" => "O",
    "Ọ" => "O",
    "Ỏ" => "O",
    "Ố" => "O",
    "Ồ" => "O",
    "Ổ" => "O",
    "Ỗ" => "O",
    "Ộ" => "O",
    "Ớ" => "O",
    "Ờ" => "O",
    "Ở" => "O",
    "Ỡ" => "O",
    "Ợ" => "O",
    "Ⓞ" => "O",
    "Ꝋ" => "O",
    "Ꝍ" => "O",
    "Ｏ" => "O",
    "ò" => "o",
    "ó" => "o",
    "ô" => "o",
    "õ" => "o",
    "ö" => "o",
    "ø" => "o",
    "ō" => "o",
    "ŏ" => "o",
    "ő" => "o",
    "ơ" => "o",
    "ǒ" => "o",
    "ǫ" => "o",
    "ǭ" => "o",
    "ǿ" => "o",
    "ȍ" => "o",
    "ȏ" => "o",
    "ȫ" => "o",
    "ȭ" => "o",
    "ȯ" => "o",
    "ȱ" => "o",
    "ɔ" => "o",
    "ɵ" => "o",
    "ᴖ" => "o",
    "ᴗ" => "o",
    "ᶗ" => "o",
    "ṍ" => "o",
    "ṏ" => "o",
    "ṑ" => "o",
    "ṓ" => "o",
    "ọ" => "o",
    "ỏ" => "o",
    "ố" => "o",
    "ồ" => "o",
    "ổ" => "o",
    "ỗ" => "o",
    "ộ" => "o",
    "ớ" => "o",
    "ờ" => "o",
    "ở" => "o",
    "ỡ" => "o",
    "ợ" => "o",
    "ₒ" => "o",
    "ⓞ" => "o",
    "ⱺ" => "o",
    "ꝋ" => "o",
    "ꝍ" => "o",
    "ｏ" => "o",
    "Œ" => "OE",
    "ɶ" => "OE",
    "Ꝏ" => "OO",
    "Ȣ" => "OU",
    "ᴕ" => "OU",
    "⒪" => "(o)",
    "œ" => "oe",
    "ᴔ" => "oe",
    "ꝏ" => "oo",
    "ȣ" => "ou",
    "Ƥ" => "P",
    "ᴘ" => "P",
    "Ṕ" => "P",
    "Ṗ" => "P",
    "Ⓟ" => "P",
    "Ᵽ" => "P",
    "Ꝑ" => "P",
    "Ꝓ" => "P",
    "Ꝕ" => "P",
    "Ｐ" => "P",
    "ƥ" => "p",
    "ᵱ" => "p",
    "ᵽ" => "p",
    "ᶈ" => "p",
    "ṕ" => "p",
    "ṗ" => "p",
    "ⓟ" => "p",
    "ꝑ" => "p",
    "ꝓ" => "p",
    "ꝕ" => "p",
    "ꟼ" => "p",
    "ｐ" => "p",
    "⒫" => "(p)",
    "Ɋ" => "Q",
    "Ⓠ" => "Q",
    "Ꝗ" => "Q",
    "Ꝙ" => "Q",
    "Ｑ" => "Q",
    "ĸ" => "q",
    "ɋ" => "q",
    "ʠ" => "q",
    "ⓠ" => "q",
    "ꝗ" => "q",
    "ꝙ" => "q",
    "ｑ" => "q",
    "⒬" => "(q)",
    "ȹ" => "qp",
    "Ŕ" => "R",
    "Ŗ" => "R",
    "Ř" => "R",
    "Ȑ" => "R",
    "Ȓ" => "R",
    "Ɍ" => "R",
    "ʀ" => "R",
    "ʁ" => "R",
    "ᴙ" => "R",
    "ᴚ" => "R",
    "Ṙ" => "R",
    "Ṛ" => "R",
    "Ṝ" => "R",
    "Ṟ" => "R",
    "Ⓡ" => "R",
    "Ɽ" => "R",
    "Ꝛ" => "R",
    "Ꞃ" => "R",
    "Ｒ" => "R",
    "ŕ" => "r",
    "ŗ" => "r",
    "ř" => "r",
    "ȑ" => "r",
    "ȓ" => "r",
    "ɍ" => "r",
    "ɼ" => "r",
    "ɽ" => "r",
    "ɾ" => "r",
    "ɿ" => "r",
    "ᵣ" => "r",
    "ᵲ" => "r",
    "ᵳ" => "r",
    "ᶉ" => "r",
    "ṙ" => "r",
    "ṛ" => "r",
    "ṝ" => "r",
    "ṟ" => "r",
    "ⓡ" => "r",
    "ꝛ" => "r",
    "ꞃ" => "r",
    "ｒ" => "r",
    "⒭" => "(r)",
    "Ś" => "S",
    "Ŝ" => "S",
    "Ş" => "S",
    "Š" => "S",
    "Ș" => "S",
    "Ṡ" => "S",
    "Ṣ" => "S",
    "Ṥ" => "S",
    "Ṧ" => "S",
    "Ṩ" => "S",
    "Ⓢ" => "S",
    "ꜱ" => "S",
    "ꞅ" => "S",
    "Ｓ" => "S",
    "ś" => "s",
    "ŝ" => "s",
    "ş" => "s",
    "š" => "s",
    "ſ" => "s",
    "ș" => "s",
    "ȿ" => "s",
    "ʂ" => "s",
    "ᵴ" => "s",
    "ᶊ" => "s",
    "ṡ" => "s",
    "ṣ" => "s",
    "ṥ" => "s",
    "ṧ" => "s",
    "ṩ" => "s",
    "ẜ" => "s",
    "ẝ" => "s",
    "ⓢ" => "s",
    "Ꞅ" => "s",
    "ｓ" => "s",
    "ẞ" => "SS",
    "⒮" => "(s)",
    "ß" => "ss",
    "ﬆ" => "st",
    "Ţ" => "T",
    "Ť" => "T",
    "Ŧ" => "T",
    "Ƭ" => "T",
    "Ʈ" => "T",
    "Ț" => "T",
    "Ⱦ" => "T",
    "ᴛ" => "T",
    "Ṫ" => "T",
    "Ṭ" => "T",
    "Ṯ" => "T",
    "Ṱ" => "T",
    "Ⓣ" => "T",
    "Ꞇ" => "T",
    "Ｔ" => "T",
    "ţ" => "t",
    "ť" => "t",
    "ŧ" => "t",
    "ƫ" => "t",
    "ƭ" => "t",
    "ț" => "t",
    "ȶ" => "t",
    "ʇ" => "t",
    "ʈ" => "t",
    "ᵵ" => "t",
    "ṫ" => "t",
    "ṭ" => "t",
    "ṯ" => "t",
    "ṱ" => "t",
    "ẗ" => "t",
    "ⓣ" => "t",
    "ⱦ" => "t",
    "ｔ" => "t",
    "Þ" => "TH",
    "Ꝧ" => "TH",
    "Ꜩ" => "TZ",
    "⒯" => "(t)",
    "ʨ" => "tc",
    "þ" => "th",
    "ᵺ" => "th",
    "ꝧ" => "th",
    "ʦ" => "ts",
    "ꜩ" => "tz",
    "Ù" => "U",
    "Ú" => "U",
    "Û" => "U",
    "Ü" => "U",
    "Ũ" => "U",
    "Ū" => "U",
    "Ŭ" => "U",
    "Ů" => "U",
    "Ű" => "U",
    "Ų" => "U",
    "Ư" => "U",
    "Ǔ" => "U",
    "Ǖ" => "U",
    "Ǘ" => "U",
    "Ǚ" => "U",
    "Ǜ" => "U",
    "Ȕ" => "U",
    "Ȗ" => "U",
    "Ʉ" => "U",
    "ᴜ" => "U",
    "ᵾ" => "U",
    "Ṳ" => "U",
    "Ṵ" => "U",
    "Ṷ" => "U",
    "Ṹ" => "U",
    "Ṻ" => "U",
    "Ụ" => "U",
    "Ủ" => "U",
    "Ứ" => "U",
    "Ừ" => "U",
    "Ử" => "U",
    "Ữ" => "U",
    "Ự" => "U",
    "Ⓤ" => "U",
    "Ｕ" => "U",
    "ù" => "u",
    "ú" => "u",
    "û" => "u",
    "ü" => "u",
    "ũ" => "u",
    "ū" => "u",
    "ŭ" => "u",
    "ů" => "u",
    "ű" => "u",
    "ų" => "u",
    "ư" => "u",
    "ǔ" => "u",
    "ǖ" => "u",
    "ǘ" => "u",
    "ǚ" => "u",
    "ǜ" => "u",
    "ȕ" => "u",
    "ȗ" => "u",
    "ʉ" => "u",
    "ᵤ" => "u",
    "ᶙ" => "u",
    "ṳ" => "u",
    "ṵ" => "u",
    "ṷ" => "u",
    "ṹ" => "u",
    "ṻ" => "u",
    "ụ" => "u",
    "ủ" => "u",
    "ứ" => "u",
    "ừ" => "u",
    "ử" => "u",
    "ữ" => "u",
    "ự" => "u",
    "ⓤ" => "u",
    "ｕ" => "u",
    "⒰" => "(u)",
    "ᵫ" => "ue",
    "Ʋ" => "V",
    "Ʌ" => "V",
    "ᴠ" => "V",
    "Ṽ" => "V",
    "Ṿ" => "V",
    "Ỽ" => "V",
    "Ⓥ" => "V",
    "Ꝟ" => "V",
    "Ꝩ" => "V",
    "Ｖ" => "V",
    "ʋ" => "v",
    "ʌ" => "v",
    "ᵥ" => "v",
    "ᶌ" => "v",
    "ṽ" => "v",
    "ṿ" => "v",
    "ⓥ" => "v",
    "ⱱ" => "v",
    "ⱴ" => "v",
    "ꝟ" => "v",
    "ｖ" => "v",
    "Ꝡ" => "VY",
    "⒱" => "(v)",
    "ꝡ" => "vy",
    "Ŵ" => "W",
    "Ƿ" => "W",
    "ᴡ" => "W",
    "Ẁ" => "W",
    "Ẃ" => "W",
    "Ẅ" => "W",
    "Ẇ" => "W",
    "Ẉ" => "W",
    "Ⓦ" => "W",
    "Ⱳ" => "W",
    "Ｗ" => "W",
    "ŵ" => "w",
    "ƿ" => "w",
    "ʍ" => "w",
    "ẁ" => "w",
    "ẃ" => "w",
    "ẅ" => "w",
    "ẇ" => "w",
    "ẉ" => "w",
    "ẘ" => "w",
    "ⓦ" => "w",
    "ⱳ" => "w",
    "ｗ" => "w",
    "⒲" => "(w)",
    "Ẋ" => "X",
    "Ẍ" => "X",
    "Ⓧ" => "X",
    "Ｘ" => "X",
    "ᶍ" => "x",
    "ẋ" => "x",
    "ẍ" => "x",
    "ₓ" => "x",
    "ⓧ" => "x",
    "ｘ" => "x",
    "⒳" => "(x)",
    "Ý" => "Y",
    "Ŷ" => "Y",
    "Ÿ" => "Y",
    "Ƴ" => "Y",
    "Ȳ" => "Y",
    "Ɏ" => "Y",
    "ʏ" => "Y",
    "Ẏ" => "Y",
    "Ỳ" => "Y",
    "Ỵ" => "Y",
    "Ỷ" => "Y",
    "Ỹ" => "Y",
    "Ỿ" => "Y",
    "Ⓨ" => "Y",
    "Ｙ" => "Y",
    "ý" => "y",
    "ÿ" => "y",
    "ŷ" => "y",
    "ƴ" => "y",
    "ȳ" => "y",
    "ɏ" => "y",
    "ʎ" => "y",
    "ẏ" => "y",
    "ẙ" => "y",
    "ỳ" => "y",
    "ỵ" => "y",
    "ỷ" => "y",
    "ỹ" => "y",
    "ỿ" => "y",
    "ⓨ" => "y",
    "ｙ" => "y",
    "⒴" => "(y)",
    "Ź" => "Z",
    "Ż" => "Z",
    "Ž" => "Z",
    "Ƶ" => "Z",
    "Ȝ" => "Z",
    "Ȥ" => "Z",
    "ᴢ" => "Z",
    "Ẑ" => "Z",
    "Ẓ" => "Z",
    "Ẕ" => "Z",
    "Ⓩ" => "Z",
    "Ⱬ" => "Z",
    "Ꝣ" => "Z",
    "Ｚ" => "Z",
    "ź" => "z",
    "ż" => "z",
    "ž" => "z",
    "ƶ" => "z",
    "ȝ" => "z",
    "ȥ" => "z",
    "ɀ" => "z",
    "ʐ" => "z",
    "ʑ" => "z",
    "ᵶ" => "z",
    "ᶎ" => "z",
    "ẑ" => "z",
    "ẓ" => "z",
    "ẕ" => "z",
    "ⓩ" => "z",
    "ⱬ" => "z",
    "ꝣ" => "z",
    "ｚ" => "z",
    "⒵" => "(z)",
    "⁰" => "0",
    "₀" => "0",
    "⓪" => "0",
    "⓿" => "0",
    "０" => "0",
    "¹" => "1",
    "₁" => "1",
    "①" => "1",
    "⓵" => "1",
    "❶" => "1",
    "➀" => "1",
    "➊" => "1",
    "１" => "1",
    "⒈" => "1.",
    "⑴" => "(1)",
    "²" => "2",
    "₂" => "2",
    "②" => "2",
    "⓶" => "2",
    "❷" => "2",
    "➁" => "2",
    "➋" => "2",
    "２" => "2",
    "⒉" => "2.",
    "⑵" => "(2)",
    "³" => "3",
    "₃" => "3",
    "③" => "3",
    "⓷" => "3",
    "❸" => "3",
    "➂" => "3",
    "➌" => "3",
    "３" => "3",
    "⒊" => "3.",
    "⑶" => "(3)",
    "⁴" => "4",
    "₄" => "4",
    "④" => "4",
    "⓸" => "4",
    "❹" => "4",
    "➃" => "4",
    "➍" => "4",
    "４" => "4",
    "⒋" => "4.",
    "⑷" => "(4)",
    "⁵" => "5",
    "₅" => "5",
    "⑤" => "5",
    "⓹" => "5",
    "❺" => "5",
    "➄" => "5",
    "➎" => "5",
    "５" => "5",
    "⒌" => "5.",
    "⑸" => "(5)",
    "⁶" => "6",
    "₆" => "6",
    "⑥" => "6",
    "⓺" => "6",
    "❻" => "6",
    "➅" => "6",
    "➏" => "6",
    "６" => "6",
    "⒍" => "6.",
    "⑹" => "(6)",
    "⁷" => "7",
    "₇" => "7",
    "⑦" => "7",
    "⓻" => "7",
    "❼" => "7",
    "➆" => "7",
    "➐" => "7",
    "７" => "7",
    "⒎" => "7.",
    "⑺" => "(7)",
    "⁸" => "8",
    "₈" => "8",
    "⑧" => "8",
    "⓼" => "8",
    "❽" => "8",
    "➇" => "8",
    "➑" => "8",
    "８" => "8",
    "⒏" => "8.",
    "⑻" => "(8)",
    "⁹" => "9",
    "₉" => "9",
    "⑨" => "9",
    "⓽" => "9",
    "❾" => "9",
    "➈" => "9",
    "➒" => "9",
    "９" => "9",
    "⒐" => "9.",
    "⑼" => "(9)",
    "⑩" => "10",
    "⓾" => "10",
    "❿" => "10",
    "➉" => "10",
    "➓" => "10",
    "⒑" => "10.",
    "⑽" => "(10)",
    "⑪" => "11",
    "⓫" => "11",
    "⒒" => "11.",
    "⑾" => "(11)",
    "⑫" => "12",
    "⓬" => "12",
    "⒓" => "12.",
    "⑿" => "(12)",
    "⑬" => "13",
    "⓭" => "13",
    "⒔" => "13.",
    "⒀" => "(13)",
    "⑭" => "14",
    "⓮" => "14",
    "⒕" => "14.",
    "⒁" => "(14)",
    "⑮" => "15",
    "⓯" => "15",
    "⒖" => "15.",
    "⒂" => "(15)",
    "⑯" => "16",
    "⓰" => "16",
    "⒗" => "16.",
    "⒃" => "(16)",
    "⑰" => "17",
    "⓱" => "17",
    "⒘" => "17.",
    "⒄" => "(17)",
    "⑱" => "18",
    "⓲" => "18",
    "⒙" => "18.",
    "⒅" => "(18)",
    "⑲" => "19",
    "⓳" => "19",
    "⒚" => "19.",
    "⒆" => "(19)",
    "⑳" => "20",
    "⓴" => "20",
    "⒛" => "20.",
    "⒇" => "(20)",
    "«" => "\"",
    "»" => "\"",
    "“" => "\"",
    "”" => "\"",
    "„" => "\"",
    "″" => "\"",
    "‶" => "\"",
    "❝" => "\"",
    "❞" => "\"",
    "❮" => "\"",
    "❯" => "\"",
    "＂" => "\"",
    "‘" => "\\'",
    "’" => "\\'",
    "‚" => "\\'",
    "‛" => "\\'",
    "′" => "\\'",
    "‵" => "\\'",
    "‹" => "\\'",
    "›" => "\\'",
    "❛" => "\\'",
    "❜" => "\\'",
    "＇" => "\\'",
    "‐" => "-",
    "‑" => "-",
    "‒" => "-",
    "–" => "-",
    "—" => "-",
    "⁻" => "-",
    "₋" => "-",
    "－" => "-",
    "⁅" => "[",
    "❲" => "[",
    "［" => "[",
    "⁆" => "]",
    "❳" => "]",
    "］" => "]",
    "⁽" => "(",
    "₍" => "(",
    "❨" => "(",
    "❪" => "(",
    "（" => "(",
    "⸨" => "((",
    "⁾" => ")",
    "₎" => ")",
    "❩" => ")",
    "❫" => ")",
    "）" => ")",
    "⸩" => "))",
    "❬" => "<",
    "❰" => "<",
    "＜" => "<",
    "❭" => ">",
    "❱" => ">",
    "＞" => ">",
    "❴" => "{",
    "｛" => "{",
    "❵" => "}",
    "｝" => "}",
    "⁺" => "+",
    "₊" => "+",
    "＋" => "+",
    "⁼" => "=",
    "₌" => "=",
    "＝" => "=",
    "！" => "!",
    "‼" => "!!",
    "⁉" => "!?",
    "＃" => "#",
    "＄" => "$",
    "⁒" => "%",
    "％" => "%",
    "＆" => "&",
    "⁎" => "*",
    "＊" => "*",
    "，" => ",",
    "．" => ".",
    "⁄" => "/",
    "／" => "/",
    "：" => ":",
    "⁏" => ";",
    "；" => ";",
    "？" => "?",
    "⁇" => "??",
    "⁈" => "?!",
    "＠" => "@",
    "＼" => "\\\\",
    "‸" => "^",
    "＾" => "^",
    "＿" => "_",
    "⁓" => "~",
    "～" => "~"
  }.freeze
end
