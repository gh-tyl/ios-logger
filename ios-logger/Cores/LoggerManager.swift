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

    func initFunctions(loggers: LoggerModels) {
    // Set the logElements for the logswriter
    var logElements: Array<String> = []
    for logger in loggers.Loggers {
        if logger.isRecord {
            logElements.append(logger.configName)
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
    for (idx, var logger) in loggers.Loggers.enumerated() {
        initFunction(idx: idx, logger: &logger, logs: &logs)
    }
    self.logswriter.write(logs)

    func initFunction(idx: Int, logger: inout LoggerModel, logs: inout Dictionary<String, String>) {
        if logger.isRecord && logger.configId == loggerConfig["Datetime"] {
            sbmanager.startScreenBrightness()
            // logger.value = GetCurrentDatetime()
            loggers.Loggers[idx].value = GetCurrentDatetime()
        }

        if logger.isRecord && logger.configId == loggerConfig["ScreenBrightness"] {
            sbmanager.startScreenBrightness()
            // logger.value = sbmanager.brightnessString
            loggers.Loggers[idx].value = sbmanager.brightnessString
        }

        if logger.isRecord && logger.configId == loggerConfig["AtmosphericPressure"] {
            ammanager.startAtomosphericPressureUpdate()
            // logger.value = relaltitude ? ammanager.pressureString: "0.0"
            loggers.Loggers[idx].value = relaltitude ? ammanager.pressureString: "0.0"
        }

        print("logger.itemNameEN: \(logger.value)")
        // logs[logger.configName] = logger.value
        logs[loggers.Loggers[idx].configName] = loggers.Loggers[idx].value
        }
    }

    func callFunctions(loggers: LoggerModels) {
        print("callFunctions")
        // Update the loggers
        var logs: Dictionary<String, String> = [:]
        // loop with index
        for (idx, var logger) in loggers.Loggers.enumerated() {
            updateValue(idx: idx, logger: &logger, logs: &logs)
        }
        // if memo is not empty, add the memo to the logs
        self.logswriter.write(logs)
        print("callFunctions end")

        func updateValue(idx: Int, logger: inout LoggerModel, logs: inout Dictionary<String, String>) {
            if logger.isRecord && logger.configId == loggerConfig["Datetime"] {
                //  logger.value = GetCurrentDatetime()
                loggers.Loggers[idx].value = GetCurrentDatetime()
            } else if logger.isRecord && logger.configId == loggerConfig["ScreenBrightness"] {
                sbmanager.startScreenBrightness()
                //  logger.value = sbmanager.brightnessString
                loggers.Loggers[idx].value = sbmanager.brightnessString
            } else if logger.isRecord && logger.configId == loggerConfig["AtmosphericPressure"] {
                //  logger.value = relaltitude ? ammanager.pressureString: "---"
                loggers.Loggers[idx].value = relaltitude ? ammanager.pressureString: "---"
            }
            if logger.isRecord {
                print("\(logger.itemNameEN): \(logger.value)")
                //  logs[logger.configName] = logger.value
                logs[loggers.Loggers[idx].configName] = loggers.Loggers[idx].value
            }
        }
    }

    func stopFunctions(loggers: LoggerModels) {
        print("stopFunctions")
        for var logger in loggers.Loggers {
            stopFunction(logger: &logger)
        }
        self.logswriter.close()
        print("stopFunctions: end")

        func stopFunction(logger: inout LoggerModel) {
            if logger.isRecord && logger.configId == loggerConfig["ScreenBrightness"] {
                sbmanager.stopScreenBrightness()
                // sbmanager = ScreenBrightnessManager()
            }

            if logger.isRecord && logger.configId == loggerConfig["AtmosphericPressure"] {
                ammanager.stopAtomosphericPressureUpdate()
                // ammanager = AltimeterManager()
            }
        }
    }
}
