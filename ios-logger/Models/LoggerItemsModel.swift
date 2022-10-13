import Foundation
import Combine

final class LoggerItemsModel: ObservableObject {
    @Published var LoggerItems: Array<LoggerItemModel> = []

    init() {
        self.LoggerItems = initLoggerItem(loggerConfig: loggerConfig)
    }

    func initLoggerItem(loggerConfig: Array<Dictionary<String, Any>>) -> Array<LoggerItemModel> {
        var LoggerItem: LoggerItemModel
        var LoggerItems: Array<LoggerItemModel> = []
        for item in loggerConfig {
            LoggerItem = LoggerItemModel(
                configId: item["id"] as! String,
                itemNameEN: item["itemNameEN"] as! String,
                itemNameJA: item["itemNameJA"] as! String,
                isRecord: item["isRecord"] as! Bool,
                value: item["value"] as! String)
            LoggerItems.append(LoggerItem)
        }
        return LoggerItems
    }
}

struct LoggerItemModel: Hashable, Codable, Identifiable {
    var id = UUID()
    var configId: String
    var itemNameEN: String
    var itemNameJA: String
    var isRecord: Bool
    var value: String
}
