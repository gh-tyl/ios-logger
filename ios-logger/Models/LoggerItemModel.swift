import Foundation
import Combine

final class LoggerItemModelData: ObservableObject {
    @Published var LoggerItems: [LoggerItemModel] = LoggerItemsList
}

struct LoggerItemModel {
    var id = UUID()
    var itemNameEN: String
    var itemNameJA: String
    var initClass: Any?
    var isRecord: Bool
}

let LoggerItemsList = [
    LoggerItemModel(itemNameEN: "Absolute Altitude", itemNameJA: "絶対高度", initClass: nil, isRecord: false),
    LoggerItemModel(itemNameEN: "Relative Altitude", itemNameJA: "相対高度", initClass: nil, isRecord: false),
    LoggerItemModel(itemNameEN: "Atmospheric Pressure", itemNameJA: "気圧", initClass: nil, isRecord: false),
    LoggerItemModel(itemNameEN: "Screen Brightness", itemNameJA: "輝度", initClass: nil, isRecord: false),
]
