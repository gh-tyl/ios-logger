import Foundation

public var loggerConfig: Dictionary<String, String> = [
    "Datetime": "0",
    "ScreenBrightness": "1",
    "AtmosphericPressure": "2",
]

public var loggerList: Array<Dictionary<String, Any>> = [
    [
        "id": "0",
        "configName": "Datetime",
        "itemNameEN": "Datetime",
        "itemNameJA": "日時",
        "isRecord": true,
        "value": "2022/10/01",
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
        ]
    ],
    "Location": [
        [
            "configId": "0",
            "name": "home",
        ],
        [
            "configId": "1",
            "name": "office",
        ],
        [
            "configId": "2",
            "name": "school",
        ]
    ]
]

public var langConfig: Dictionary<String, String> = [
    "en": "0",
    "ja": "1"
]
