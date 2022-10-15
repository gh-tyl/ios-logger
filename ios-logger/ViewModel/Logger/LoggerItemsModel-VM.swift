import Foundation
import CoreMotion

class LoggerItemsModelVM: ObservableObject {
    let sbmanager = ScreenBrightnessManager()
    let ammanager = AltimeterManager()
    let relaltitude = CMAltimeter.isRelativeAltitudeAvailable()

    var logswriter: LogsWriter

        init() {
        self.logswriter = LogsWriter(logElements: [])
    }

    func initFunctions(loggerItems: inout Array<LoggerItemModel>) {
        var logElements: Array<String> = []
        for loggerItem in loggerItems {
            if loggerItem.isRecord {
                logElements.append(loggerItem.configName)
            }
        }
        print("logElements: \(logElements)")
        self.logswriter = LogsWriter(logElements: logElements)
        let filepath: URL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("\(GetCurrentDatetimeFilename())_Logs.csv")
        // let filepath: URL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("Logs.csv")

        print("filepath: \(filepath)")
        self.logswriter.open(filepath)

        for var loggerItem in loggerItems {
            initFunction(loggerItem: &loggerItem)
        }

        func initFunction(loggerItem: inout LoggerItemModel) {
            if loggerItem.isRecord && loggerItem.configId == loggerConfig["Datetime"] {
                print("initFunction: \(loggerItem.itemNameEN)")
                sbmanager.startScreenBrightness()
            }

            if loggerItem.isRecord && loggerItem.configId == loggerConfig["ScreenBrightness"] {
                print("initFunction: \(loggerItem.itemNameEN)")
                sbmanager.startScreenBrightness()
            }

            if loggerItem.isRecord && loggerItem.configId == loggerConfig["AtmosphericPressure"] {
                print("initFunction: \(loggerItem.itemNameEN)")
                ammanager.startAtomosphericPressureUpdate()
            }
        }
    }

    func callFunctions(loggerItems: inout Array<LoggerItemModel>) {
        var logs: Dictionary<String, String> = [:]
        for var loggerItem in loggerItems {
            updateValue(loggerItem: &loggerItem, logs: &logs)
        }
        self.logswriter.write(logs)

        func updateValue(loggerItem: inout LoggerItemModel, logs: inout Dictionary<String, String>) {


            if loggerItem.isRecord && loggerItem.configId == loggerConfig["Datetime"] {
                loggerItem.value = GetCurrentDatetime()
            } else if loggerItem.isRecord && loggerItem.configId == loggerConfig["ScreenBrightness"] {
                sbmanager.startScreenBrightness()
                loggerItem.value = sbmanager.brightnessString
            } else if loggerItem.isRecord && loggerItem.configId == loggerConfig["AtmosphericPressure"] {
                loggerItem.value = relaltitude ? ammanager.pressureString: "---"
            }
            if loggerItem.isRecord {
                print("\(loggerItem.itemNameEN): \(loggerItem.value)")
                logs[loggerItem.configName] = loggerItem.value
            }
        }
    }

    func stopFunctions(loggerItems: inout Array<LoggerItemModel>) {
        print("stopFunctions")
        for var loggerItem in loggerItems {
                stopFunction(loggerItem: &loggerItem)
        }

        func stopFunction(loggerItem: inout LoggerItemModel) {
            if loggerItem.isRecord && loggerItem.configId == loggerConfig["ScreenBrightness"] {
                sbmanager.stopRecord()
            }

            if loggerItem.isRecord && loggerItem.configId == loggerConfig["AtmosphericPressure"] {
                ammanager.stopAtomosphericPressureUpdate()
            }
        }
        self.logswriter.close()
        print("stopFunctions: end")
    }
}
