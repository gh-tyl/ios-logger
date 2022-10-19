import Foundation

extension LabelPage {
    @MainActor class LabelPageVM: ObservableObject {
        @Published var title: String = "Label"
        @Published var categoryActivity: String = "Activity"
        @Published var categoryLocation: String = "Location"
    }
}
