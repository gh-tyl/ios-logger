import Foundation

extension LoggerReadyPage {
    @MainActor class LoggerReadyVM: ObservableObject {
        @Published var title: String = "Ready"
        @Published var categoryActivity: String = "Activity"
        @Published var categoryLocation: String = "Location"
    }
}
