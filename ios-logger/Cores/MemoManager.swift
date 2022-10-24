import Foundation

class MemoManager {
    func updateValue() {
        print("updateValue")
    }

    func startFunction(loggers: LoggerModels) {
        for (idx, var logger) in loggers.Loggers.enumerated() {
            if logger.configId == loggerConfig["Memo"] {
                loggers.Loggers[idx].isRecord = true
            }
        }
    }

    func stopFunction(loggers: LoggerModels) {
        for (idx, var logger) in loggers.Loggers.enumerated() {
            if logger.isRecord && logger.configId == loggerConfig["Memo"] {
                // loggers.Loggers[idx].isRecord = false
                loggers.Loggers[idx].value = ""
            }
        }
    }
}
