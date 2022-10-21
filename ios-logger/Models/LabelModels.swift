import Foundation

final class LabelModels: ObservableObject {
    @Published var LabelActivities: Array<LabelModel> = []
    @Published var LabelLocations: Array<LabelModel> = []

    init () {
        self.LabelActivities = initLabels(labelDict: labelDict, flag: "Activity")
        self.LabelLocations = initLabels(labelDict: labelDict, flag: "Location")
    }

    func initLabels(labelDict: Dictionary<String, Array<Dictionary<String, String>>>, flag: String) -> Array<LabelModel> {
        var label: LabelModel
        var labels: Array<LabelModel> = []
        let LabelList: [[String : String]]? = labelDict[flag]
        for item in LabelList! {
            label = LabelModel(
                configId: item["configId"]!,
                name: item["name"]!)
            labels.append(label)
        }
        return labels
    }
}

struct LabelModel: Hashable, Codable, Identifiable {
    var id: UUID = UUID()
    var configId: String
    var name: String
}
