import Foundation

public var loggerConfig: Dictionary<String, String> = [
    "Datetime": "0",
    "ScreenBrightness": "1",
    "AtmosphericPressure": "2",
    "AbsoluteAltitude": "3",
    "RelativeAltitude": "4",
    "Memo": "1000",
    "Activity": "1001",
    "Location": "1002",
]

public var loggerDict: Dictionary<String, Dictionary<String, Any>> = [
    "0": [
        "configId": "0",
        "configName": "Datetime",
        "itemNameEN": "Datetime",
        "itemNameJA": "日時",
        "isRecord": true,
        "value": "",
    ],
    "1": [
        "configId": "1",
        "configName": "ScreenBrightness",
        "itemNameEN": "Screen Brightness",
        "itemNameJA": "輝度",
        "isRecord": false,
        "value": ""
    ],
    "2": [
        "configId": "2",
        "configName": "AtmosphericPressure",
        "itemNameEN": "Atmospheric Pressure",
        "itemNameJA": "気圧",
        "isRecord": false,
        "value": ""
    ],
    "3": [
        "configId": "3",
        "configName": "AbsoluteAltitude",
        "itemNameEN": "Absolute Altitude",
        "itemNameJA": "絶対高度",
        "isRecord": false,
        "value": ""
    ],
    "4": [
        "configId": "4",
        "configName": "RelativeAltitude",
        "itemNameEN": "Relative Altitude",
        "itemNameJA": "相対高度",
        "isRecord": false,
        "value": ""
    ],
    "1000": [
        "configId": "1000",
        "configName": "Memo",
        "itemNameEN": "Memo",
        "itemNameJA": "メモ",
        "isRecord": true,
        "value": ""
    ],
    "1001": [
        "configId": "1001",
        "configName": "Activity",
        "itemNameEN": "Activity",
        "itemNameJA": "活動",
        "isRecord": true,
        "value": ""
    ],
    "1002": [
        "configId": "1002",
        "configName": "Location",
        "itemNameEN": "Location",
        "itemNameJA": "位置",
        "isRecord": true,
        "value": ""
    ]
]

public var labelConfig: Dictionary<String, String> = [
    "Activity": "0",
    "Location": "1",
]

public var labelDict: Dictionary<String, Array<Dictionary<String, String>>> = [
    "Activity": [
        [
            "configId": "0",
            "name": "mtg",
        ],
        [
            "configId": "1",
            "name": "study",
        ],
        [
            "configId": "2",
            "name": "work",
        ],
        [
            "configId": "3",
            "name": "coding",
        ],
        [
            "configId": "4",
            "name": "reading",
        ]
    ],
    "Location": [
        [
            "configId": "0",
            "name": "private room",
        ],
        [
            "configId": "1",
            "name": "half private room",
        ],
        [
            "configId": "2",
            "name": "class room",
        ],
        [
            "configId": "3",
            "name": "library",
        ],
        [
            "configId": "4",
            "name": "office",
        ]
    ]
]

public var memoDict: Dictionary<String, String> = [
    "0": "",
    "1": "Stretch",
    "2": "Standing",
    "3": "Moving",
    "4": "Comfort break",
    "5": "Talk with someone",
    "6": "Take a nap",
]

public var langConfig: Dictionary<String, String> = [
    "en": "0",
    "ja": "1"
]
