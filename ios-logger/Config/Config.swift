import Foundation

public var loggerConfig: Dictionary<String, String> = [
    "Datetime": "0",
    "ScreenBrightness": "1",
    "AtmosphericPressure": "2",
    "Memo": "1000",
    "Activity": "1001",
    "Location": "1002",
]

public var loggerList: Array<Dictionary<String, Any>> = [
    [
        "id": "0",
        "configName": "Datetime",
        "itemNameEN": "Datetime",
        "itemNameJA": "日時",
        "isRecord": true,
        "value": "",
    ],
    [
        "id": "1",
        "configName": "ScreenBrightness",
        "itemNameEN": "Screen Brightness",
        "itemNameJA": "輝度",
        "isRecord": false,
        "value": ""
    ],
    [
        "id": "2",
        "configName": "AtmosphericPressure",
        "itemNameEN": "Atmospheric Pressure",
        "itemNameJA": "気圧",
        "isRecord": false,
        "value": ""
    ],
    [
        "id": "1000",
        "configName": "Memo",
        "itemNameEN": "Memo",
        "itemNameJA": "メモ",
        "isRecord": false,
        "value": ""
    ],
    [
        "id": "1001",
        "configName": "Activity",
        "itemNameEN": "Activity",
        "itemNameJA": "活動",
        "isRecord": true,
        "value": ""
    ],
    [
        "id": "1002",
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

public var langConfig: Dictionary<String, String> = [
    "en": "0",
    "ja": "1"
]
