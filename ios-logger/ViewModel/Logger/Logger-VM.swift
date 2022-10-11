import Foundation

extension LoggerPage {
    @MainActor class LoggerVM: ObservableObject {
        @Published var isActive: Bool = true
        @Published var title: String = "Logger"
    }
}
