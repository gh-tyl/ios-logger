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

public var langConfig: Dictionary<String, String> = [
    "en": "0",
    "ja": "1"
]
