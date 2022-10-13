import Foundation

extension LoggerReadyPage {
    @MainActor class LoggerReadyVM: ObservableObject {
        @Published var isActive: Bool = true
        @Published var title: String = "Ready"
    }
}
