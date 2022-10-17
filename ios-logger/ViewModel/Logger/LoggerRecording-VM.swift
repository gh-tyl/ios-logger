import Foundation

extension LoggerRecordingPage {
    @MainActor class LoggerRecordingPageVM: ObservableObject {
        @Published var isActive: Bool = true
        @Published var title: String = "Recording"


    }
}
