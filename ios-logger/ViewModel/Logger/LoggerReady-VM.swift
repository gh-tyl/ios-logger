import Foundation

extension LoggerReadyPage {
    @MainActor class LoggerReadyVM: ObservableObject {
        @Published var isActive: Bool = true
        @Published var title: String = "Ready"
        @Published var headlines: Array<String> = ["Activity", "Location"]
        @Published var data: Array<String> = ["0", "1", "2", "3", "4"]

        @Published var timer: Timer?
        @Published var timeInterval: TimeInterval = 3.0
        @Published var isRepeat: Bool = true
    }
}
