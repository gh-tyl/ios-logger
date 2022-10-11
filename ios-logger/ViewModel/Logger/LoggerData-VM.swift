import Foundation
import CoreData
import CoreMotion

extension LoggerDataPage {
    @MainActor class LoggerDataVM: ObservableObject {
        @Published var isActive: Bool = true
        @Published var title: String = "Data"
    }
}

extension LoggerDataOrganism {
    @MainActor class LoggerDataOVM: ObservableObject {
        @Published var isActive: Bool = true
        @Published var title: String = "Data"
        @Published var timer: Timer?
//        @Published var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

//        @Published var loggerItemsModel: LoggerItemsModel

        let sbmanager = ScreenBrightnessManager()
        let apmanager = AltimeterManager()

        init() {
//            self.loggerItemsModel = LoggerItemsModel()
//            self.callFunctions(loggerItemsModel: &self.loggerItemsModel)
            self.title = "Data"
            self.isActive = true
        }

        func callFunctions(loggerItemsModel: inout LoggerItemsModel) {
            for var loggerItem in loggerItemsModel.LoggerItems {
                print("loggerItem: \(loggerItem)")
                updateValue(loggerItem: &loggerItem)
            }
        }

        func updateValue(loggerItem: inout LoggerItemModel) {
//            let sbmanager = ScreenBrightnessManager()
//            let apmanager = AltimeterManager()

            let relaltitude = CMAltimeter.isRelativeAltitudeAvailable()

            print("isRecord: \(loggerItem.isRecord)")
            if loggerItem.isRecord == true && loggerItem.configId == "0" {
                print("brightnessString: \(sbmanager.brightnessString)")
                loggerItem.value = sbmanager.brightnessString
                print("loggerItem: \(loggerItem)")
            }

            if loggerItem.isRecord && loggerItem.configId == "1" {
                print("relaltitude: \(relaltitude)")
                print("pressureString: \(apmanager.pressureString)")
                print("pressureString: \(relaltitude ? apmanager.pressureString: "---")")
                loggerItem.value = relaltitude ? apmanager.pressureString: "---"
//                print("pressureString: \(apmanager.pressureString)")
//                loggerItem.value = apmanager.pressureString

            }
        }
    }
}
