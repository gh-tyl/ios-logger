import Foundation

extension LoggerReadyPage {
    @MainActor class LoggerReadyVM: ObservableObject {
        @Published var isActive: Bool = true
        @Published var title: String = "Ready"

        @Published var headlines: Array<String> = ["Activity", "Location"]
        @Published var data: Array<String> = ["0", "1", "2", "3", "4"]
    }
}
