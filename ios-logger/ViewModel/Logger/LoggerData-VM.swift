import Foundation
import CoreData
import CoreMotion

extension LoggerDataPage {
    @MainActor class LoggerDataVM: ObservableObject {
        @Published var isActive: Bool = true
        @Published var title: String = "Data"

        @Published var timer: Timer?
        @Published var timeInterval: TimeInterval = 3.0

        let sbmanager = ScreenBrightnessManager()
        let ammanager = AltimeterManager()
        let relaltitude = CMAltimeter.isRelativeAltitudeAvailable()

        init() {
            self.title = "Data"
            self.isActive = true
        }

        func initFunctions(loggerItems: inout Array<LoggerItemModel>) {
            for var loggerItem in loggerItems {
                initFunction(loggerItem: &loggerItem)
            }

            func initFunction(loggerItem: inout LoggerItemModel) {
                if loggerItem.isRecord == true && loggerItem.configId == "0" {
                    print("initFunctions: \(loggerItem.itemNameEN)")
                    sbmanager.startScreenBrightness()
                }

                if loggerItem.isRecord && loggerItem.configId == "1" {
                    print("initFunctions: \(loggerItem.itemNameEN)")
                    ammanager.startAtomosphericPressureUpdate()
                }
            }
        }

        func callFunctions(loggerItems: inout Array<LoggerItemModel>) {
            for var loggerItem in loggerItems {
                updateValue(loggerItem: &loggerItem)
            }
        }

        func updateValue(loggerItem: inout LoggerItemModel) {
            if loggerItem.isRecord == true && loggerItem.configId == "0" {
                sbmanager.startScreenBrightness()
                loggerItem.value = sbmanager.brightnessString
                print("\(loggerItem.itemNameEN): \(loggerItem.value)")
            }

            if loggerItem.isRecord && loggerItem.configId == "1" {
                loggerItem.value = relaltitude ? ammanager.pressureString: "---"
                print("\(loggerItem.itemNameEN): \(loggerItem.value)")
            }
        }
    }
}
