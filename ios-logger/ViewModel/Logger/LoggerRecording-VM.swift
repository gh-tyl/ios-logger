import Foundation

extension LoggerRecordingPage {
    @MainActor class LoggerRecordingPageVM: ObservableObject {
        @Published var isActive: Bool = true
        @Published var title: String = "Recording"

        @Published var timer: Timer?
        @Published var timeInterval: TimeInterval = 15.0
        @Published var isRepeat: Bool = true
    }
}
