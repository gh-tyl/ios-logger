import Foundation
import CoreMotion

class LoggerManager: ObservableObject {
    // Set the loggers
    var sbmanager = ScreenBrightnessManager()
    var ammanager = AltimeterManager()
    let relaltitude = CMAltimeter.isRelativeAltitudeAvailable()
    // Set the logswriter
    var logswriter: LogsWriter

    init() {
        self.logswriter = LogsWriter(logElements: [])
    }

    func initFunctions(loggerItems: LoggerItemsModel) {
    // Set the logElements for the logswriter
    var logElements: Array<String> = []
    for loggerItem in loggerItems.LoggerItems {
        if loggerItem.isRecord {
            logElements.append(loggerItem.configName)
        }
    }
    //  Add the element(memo, activity, location) to the logElements
    logElements.append("memo")
    logElements.append("activity")
    logElements.append("location")
    print("logElements: \(logElements)")
    // Set the logElements for the logswriter
    // Set the logswriter
    self.logswriter = LogsWriter(logElements: logElements)
    let filepath: URL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("\(GetCurrentDatetimeFilename())_Logs.csv")
    print("filepath: \(filepath)")
    self.logswriter.open(filepath)
    // Init the loggers
    var logs: Dictionary<String, String> = [:]
    // loop with index
    for (idx, var loggerItem) in loggerItems.LoggerItems.enumerated() {
        initFunction(idx: idx, loggerItem: &loggerItem, logs: &logs)
    }
    self.logswriter.write(logs)

    func initFunction(idx: Int, loggerItem: inout LoggerItemModel, logs: inout Dictionary<String, String>) {
        if loggerItem.isRecord && loggerItem.configId == loggerConfig["Datetime"] {
            sbmanager.startScreenBrightness()
            // loggerItem.value = GetCurrentDatetime()
            loggerItems.LoggerItems[idx].value = GetCurrentDatetime()
        }

        if loggerItem.isRecord && loggerItem.configId == loggerConfig["ScreenBrightness"] {
            sbmanager.startScreenBrightness()
            // loggerItem.value = sbmanager.brightnessString
            loggerItems.LoggerItems[idx].value = sbmanager.brightnessString
        }

        if loggerItem.isRecord && loggerItem.configId == loggerConfig["AtmosphericPressure"] {
            ammanager.startAtomosphericPressureUpdate()
            // loggerItem.value = relaltitude ? ammanager.pressureString: "0.0"
            loggerItems.LoggerItems[idx].value = relaltitude ? ammanager.pressureString: "0.0"
        }

        print("loggerItem.itemNameEN: \(loggerItem.value)")
        // logs[loggerItem.configName] = loggerItem.value
        logs[loggerItems.LoggerItems[idx].configName] = loggerItems.LoggerItems[idx].value
        }
    }

    func callFunctions(loggerItems: LoggerItemsModel) {
        print("callFunctions")
        // Update the loggers
        var logs: Dictionary<String, String> = [:]
        // loop with index
        for (idx, var loggerItem) in loggerItems.LoggerItems.enumerated() {
            updateValue(idx: idx, loggerItem: &loggerItem, logs: &logs)
        }
        // if memo is not empty, add the memo to the logs
        self.logswriter.write(logs)
        print("callFunctions end")

        func updateValue(idx: Int, loggerItem: inout LoggerItemModel, logs: inout Dictionary<String, String>) {
            if loggerItem.isRecord && loggerItem.configId == loggerConfig["Datetime"] {
                //  loggerItem.value = GetCurrentDatetime()
                loggerItems.LoggerItems[idx].value = GetCurrentDatetime()
            } else if loggerItem.isRecord && loggerItem.configId == loggerConfig["ScreenBrightness"] {
                sbmanager.startScreenBrightness()
                //  loggerItem.value = sbmanager.brightnessString
                loggerItems.LoggerItems[idx].value = sbmanager.brightnessString
            } else if loggerItem.isRecord && loggerItem.configId == loggerConfig["AtmosphericPressure"] {
                //  loggerItem.value = relaltitude ? ammanager.pressureString: "---"
                loggerItems.LoggerItems[idx].value = relaltitude ? ammanager.pressureString: "---"
            }
            if loggerItem.isRecord {
                print("\(loggerItem.itemNameEN): \(loggerItem.value)")
                //  logs[loggerItem.configName] = loggerItem.value
                logs[loggerItems.LoggerItems[idx].configName] = loggerItems.LoggerItems[idx].value
            }
        }
    }

    func stopFunctions(loggerItems: LoggerItemsModel) {
        print("stopFunctions")
        for var loggerItem in loggerItems.LoggerItems {
            stopFunction(loggerItem: &loggerItem)
        }
        self.logswriter.close()
        print("stopFunctions: end")

        func stopFunction(loggerItem: inout LoggerItemModel) {
            if loggerItem.isRecord && loggerItem.configId == loggerConfig["ScreenBrightness"] {
                sbmanager.stopScreenBrightness()
                // sbmanager = ScreenBrightnessManager()
            }

            if loggerItem.isRecord && loggerItem.configId == loggerConfig["AtmosphericPressure"] {
                ammanager.stopAtomosphericPressureUpdate()
                // ammanager = AltimeterManager()
            }
        }
    }
}
