Attribute VB_Name = "modEnums"
Public Function OSLangById(ByVal langId As Long) As String

    Select Case langId
        Case 1078: OSLangById = "Afrikaans"
        Case 1052: OSLangById = "Albanian"
        Case 1118: OSLangById = "Amharic"
        Case 5121: OSLangById = "Arabic - Algeria"
        Case 15361: OSLangById = "Arabic - Bahrain"
        Case 3073: OSLangById = "Arabic - Egypt"
        Case 2049: OSLangById = "Arabic - Iraq"
        Case 11265: OSLangById = "Arabic - Jordan"
        Case 13313: OSLangById = "Arabic - Kuwait"
        Case 12289: OSLangById = "Arabic - Lebanon"
        Case 4097: OSLangById = "Arabic - Libya"
        Case 6145: OSLangById = "Arabic - Morocco"
        Case 8193: OSLangById = "Arabic - Oman"
        Case 16385: OSLangById = "Arabic - Qatar"
        Case 1025: OSLangById = "Arabic - Saudi Arabia"
        Case 10241: OSLangById = "Arabic - Syria"
        Case 7169: OSLangById = "Arabic - Tunisia"
        Case 14337: OSLangById = "Arabic - United Arab Emirates"
        Case 9217: OSLangById = "Arabic - Yemen"
        Case 1067: OSLangById = "Armenian"
        Case 1101: OSLangById = "Assamese"
        Case 2092: OSLangById = "Azeri - Cyrillic"
        Case 1068: OSLangById = "Azeri - Latin"
        Case 1069: OSLangById = "Basque"
        Case 1059: OSLangById = "Belarusian"
        Case 2117: OSLangById = "Bengali - Bangladesh"
        Case 1093: OSLangById = "Bengali - India"
        Case 5146: OSLangById = "Bosnian"
        Case 1026: OSLangById = "Bulgarian"
        Case 1109: OSLangById = "Burmese"
        Case 1027: OSLangById = "Catalan"
        Case 2052: OSLangById = "Chinese - China"
        Case 3076: OSLangById = "Chinese - Hong Kong SAR"
        Case 5124: OSLangById = "Chinese - Macau SAR"
        Case 4100: OSLangById = "Chinese - Singapore"
        Case 1028: OSLangById = "Chinese - Taiwan"
        Case 1050: OSLangById = "Croatian"
        Case 1029: OSLangById = "Czech"
        Case 1030: OSLangById = "Danish"
        Case 1125: OSLangById = "Divehi; Dhivehi; Maldivian"
        Case 2067: OSLangById = "Dutch - Belgium"
        Case 1043: OSLangById = "Dutch - Netherlands"
        Case 1126: OSLangById = "Edo"
        Case 3081: OSLangById = "English - Australia"
        Case 10249: OSLangById = "English - Belize"
        Case 4105: OSLangById = "English - Canada"
        Case 9225: OSLangById = "English - Caribbean"
        Case 2057: OSLangById = "English - Great Britain"
        Case 16393: OSLangById = "English - India"
        Case 6153: OSLangById = "English - Ireland"
        Case 8201: OSLangById = "English - Jamaica"
        Case 5129: OSLangById = "English - New Zealand"
        Case 13321: OSLangById = "English - Phillippines"
        Case 7177: OSLangById = "English - Southern Africa"
        Case 11273: OSLangById = "English - Trinidad"
        Case 1033: OSLangById = "English - United States"
        Case 12297: OSLangById = "English - Zimbabwe"
        Case 1061: OSLangById = "Estonian"
        Case 1080: OSLangById = "Faroese"
        Case 1065: OSLangById = "Farsi - Persian"
        Case 1124: OSLangById = "Filipino"
        Case 1035: OSLangById = "Finnish"
        Case 2060: OSLangById = "French - Belgium"
        Case 11276: OSLangById = "French - Cameroon"
        Case 3084: OSLangById = "French - Canada"
        Case 9228: OSLangById = "French - Congo"
        Case 12300: OSLangById = "French - Cote d'Ivoire"
        Case 1036: OSLangById = "French - France"
        Case 5132: OSLangById = "French - Luxembourg"
        Case 13324: OSLangById = "French - Mali"
        Case 6156: OSLangById = "French - Monaco"
        Case 14348: OSLangById = "French - Morocco"
        Case 10252: OSLangById = "French - Senegal"
        Case 4108: OSLangById = "French - Switzerland"
        Case 7180: OSLangById = "French - West Indies"
        Case 1122: OSLangById = "Frisian - Netherlands"
        Case 1071: OSLangById = "FYRO Macedonia"
        Case 2108: OSLangById = "Gaelic - Ireland"
        Case 1084: OSLangById = "Gaelic - Scotland"
        Case 1110: OSLangById = "Galician"
        Case 1079: OSLangById = "Georgian"
        Case 3079: OSLangById = "German - Austria"
        Case 1031: OSLangById = "German - Germany"
        Case 5127: OSLangById = "German - Liechtenstein"
        Case 4103: OSLangById = "German - Luxembourg"
        Case 2055: OSLangById = "German - Switzerland"
        Case 1032: OSLangById = "Greek"
        Case 1140: OSLangById = "Guarani - Paraguay"
        Case 1095: OSLangById = "Gujarati"
        Case 1037: OSLangById = "Hebrew"
        Case 1279: OSLangById = "HID (Human Interface Device)"
        Case 1081: OSLangById = "Hindi"
        Case 1038: OSLangById = "Hungarian"
        Case 1039: OSLangById = "Icelandic"
        Case 1136: OSLangById = "Igbo - Nigeria"
        Case 1057: OSLangById = "Indonesian"
        Case 1040: OSLangById = "Italian - Italy"
        Case 2064: OSLangById = "Italian - Switzerland"
        Case 1041: OSLangById = "Japanese"
        Case 1099: OSLangById = "Kannada"
        Case 1120: OSLangById = "Kashmiri"
        Case 1087: OSLangById = "Kazakh"
        Case 1107: OSLangById = "Khmer"
        Case 1111: OSLangById = "Konkani"
        Case 1042: OSLangById = "Korean"
        Case 1088: OSLangById = "Kyrgyz - Cyrillic"
        Case 1108: OSLangById = "Lao"
        Case 1142: OSLangById = "Latin"
        Case 1062: OSLangById = "Latvian"
        Case 1063: OSLangById = "Lithuanian"
        Case 2110: OSLangById = "Malay - Brunei"
        Case 1086: OSLangById = "Malay - Malaysia"
        Case 1100: OSLangById = "Malayalam"
        Case 1082: OSLangById = "Maltese"
        Case 1112: OSLangById = "Manipuri"
        Case 1153: OSLangById = "Maori"
        Case 1102: OSLangById = "Marathi"
        Case 2128: OSLangById = "Mongolian"
        Case 1104: OSLangById = "Mongolian"
        Case 1121: OSLangById = "Nepali"
        Case 1044: OSLangById = "Norwegian - Bokml"
        Case 2068: OSLangById = "Norwegian - Nynorsk"
        Case 1096: OSLangById = "Oriya"
        Case 1045: OSLangById = "Polish"
        Case 1046: OSLangById = "Portuguese - Brazil"
        Case 2070: OSLangById = "Portuguese - Portugal"
        Case 1094: OSLangById = "Punjabi"
        Case 1047: OSLangById = "Raeto-Romance"
        Case 2072: OSLangById = "Romanian - Moldova"
        Case 1048: OSLangById = "Romanian - Romania"
        Case 1049: OSLangById = "Russian"
        Case 2073: OSLangById = "Russian - Moldova"
        Case 1083: OSLangById = "Sami Lappish"
        Case 1103: OSLangById = "Sanskrit"
        Case 3098: OSLangById = "Serbian - Cyrillic"
        Case 2074: OSLangById = "Serbian - Latin"
        Case 1072: OSLangById = "Sesotho (Sutu)"
        Case 1074: OSLangById = "Setsuana"
        Case 1113: OSLangById = "Sindhi"
        Case 1115: OSLangById = "Sinhala; Sinhalese"
        Case 1051: OSLangById = "Slovak"
        Case 1060: OSLangById = "Slovenian"
        Case 1143: OSLangById = "Somali"
        Case 1070: OSLangById = "Sorbian"
        Case 11274: OSLangById = "Spanish - Argentina"
        Case 16394: OSLangById = "Spanish - Bolivia"
        Case 13322: OSLangById = "Spanish - Chile"
        Case 9226: OSLangById = "Spanish - Colombia"
        Case 5130: OSLangById = "Spanish - Costa Rica"
        Case 7178: OSLangById = "Spanish - Dominican Republic"
        Case 12298: OSLangById = "Spanish - Ecuador"
        Case 17418: OSLangById = "Spanish - El Salvador"
        Case 4106: OSLangById = "Spanish - Guatemala"
        Case 18442: OSLangById = "Spanish - Honduras"
        Case 2058: OSLangById = "Spanish - Mexico"
        Case 19466: OSLangById = "Spanish - Nicaragua"
        Case 6154: OSLangById = "Spanish - Panama"
        Case 15370: OSLangById = "Spanish - Paraguay"
        Case 10250: OSLangById = "Spanish - Peru"
        Case 20490: OSLangById = "Spanish - Puerto Rico"
        Case 1034: OSLangById = "Spanish - Spain (Traditional)"
        Case 14346: OSLangById = "Spanish - Uruguay"
        Case 8202: OSLangById = "Spanish - Venezuela"
        Case 1089: OSLangById = "Swahili"
        Case 2077: OSLangById = "Swedish - Finland"
        Case 1053: OSLangById = "Swedish - Sweden"
        Case 1114: OSLangById = "Syriac"
        Case 1064: OSLangById = "Tajik"
        Case 1097: OSLangById = "Tamil"
        Case 1092: OSLangById = "Tatar"
        Case 1098: OSLangById = "Telugu"
        Case 1054: OSLangById = "Thai"
        Case 1105: OSLangById = "Tibetan"
        Case 1073: OSLangById = "Tsonga"
        Case 1055: OSLangById = "Turkish"
        Case 1090: OSLangById = "Turkmen"
        Case 1058: OSLangById = "Ukrainian"
        Case 0: OSLangById = "Unicode"
        Case 1056: OSLangById = "Urdu"
        Case 2115: OSLangById = "Uzbek - Cyrillic"
        Case 1091: OSLangById = "Uzbek - Latin"
        Case 1075: OSLangById = "Venda"
        Case 1066: OSLangById = "Vietnamese"
        Case 1106: OSLangById = "Welsh"
        Case 1076: OSLangById = "Xhosa"
        Case 1085: OSLangById = "Yiddish"
        Case 1077: OSLangById = "Zulu"
    End Select
End Function
