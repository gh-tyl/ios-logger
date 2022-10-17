import Foundation
import CoreData
import CoreMotion

extension LoggerDataMolecule {
    @MainActor class LoggerDataMoleculeVM: ObservableObject {
        @Published var isActive: Bool = true
        @Published var title: String = "Data"
//        @Published var timer: Timer?
    }
}
