import Foundation
import CoreMotion

class LoggerItemsModelVM: ObservableObject {
    let sbmanager = ScreenBrightnessManager()
    let ammanager = AltimeterManager()
    let relaltitude = CMAltimeter.isRelativeAltitudeAvailable()

    init() {

    }

    func initFunctions(loggerItems: inout Array<LoggerItemModel>) {
        for var loggerItem in loggerItems {
            print("initFunctions: \(loggerItem.itemNameEN)")
            initFunction(loggerItem: &loggerItem)
        }

        func initFunction(loggerItem: inout LoggerItemModel) {
            if loggerItem.isRecord == true && loggerItem.configId == "0" {
                sbmanager.startScreenBrightness()
            }

            if loggerItem.isRecord && loggerItem.configId == "1" {
                ammanager.startAtomosphericPressureUpdate()
            }
        }
    }

    func callFunctions(loggerItems: inout Array<LoggerItemModel>) {
        for var loggerItem in loggerItems {
            print("callFunctions: \(loggerItem.itemNameEN)")
            updateValue(loggerItem: &loggerItem)
        }
    }

    func updateValue(loggerItem: inout LoggerItemModel) {
        if loggerItem.isRecord == true && loggerItem.configId == "0" {
            print("brightnessString: \(sbmanager.brightnessString)")
            loggerItem.value = sbmanager.brightnessString
        }

        if loggerItem.isRecord && loggerItem.configId == "1" {
            print("pressureString: \(relaltitude ? ammanager.pressureString: "---")")
            loggerItem.value = relaltitude ? ammanager.pressureString: "---"
        }
    }
}
