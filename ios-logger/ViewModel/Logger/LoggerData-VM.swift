import Foundation
import CoreMotion

extension LoggerDataPage {
    @MainActor class LoggerDataVM: ObservableObject {
        @Published var isActive: Bool = true
        @Published var title: String = "Data"
        @Published var loggerItems: Array<LoggerItemModel> = []

//        @Published var timer: Timer?
//        @Published var timeInterval: TimeInterval = 3.0
//        @Published var isRepeat: Bool = true
    }
}
