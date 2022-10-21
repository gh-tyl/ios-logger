import Foundation

final class LoggerModels: ObservableObject {
    @Published var Loggers: Array<LoggerModel> = []

    init() {
        self.Loggers = initLoggerItem(loggerDict: loggerDict)
    }

    func initLoggerItem(loggerDict: Dictionary<String, Dictionary<String, Any>>) -> Array<LoggerModel> {
        var logger: LoggerModel
        var loggers: Array<LoggerModel> = []
        for (key, value) in loggerDict {
            logger = LoggerModel(
                configId: key,
                configName: value["configName"] as! String,
                itemNameEN: value["itemNameEN"] as! String,
                itemNameJA: value["itemNameJA"] as! String,
                isRecord: value["isRecord"] as! Bool,
                value: value["value"] as! String)
            loggers.append(logger)
        }
        // Sort by configId as Int
        loggers.sort { (a, b) -> Bool in
            return Int(a.configId)! < Int(b.configId)!
        }
        return loggers
    }
}

struct LoggerModel: Hashable, Codable, Identifiable {
    var id: UUID = UUID()
    var configId: String
    var configName: String
    var itemNameEN: String
    var itemNameJA: String
    var isRecord: Bool
    var value: String
}
