import Foundation
import SwiftUI
import Combine
import CoreData
import CoreMotion

class ScreenBrightnessManager: NSObject, ObservableObject {
    let willChange = PassthroughSubject<Void, Never>()

    @Published var brightnessString: String = ""

    override init() {
        super.init()
    }

    func startScreenBrightness() {
        if(UIScreen.main.brightness >= 0.0) {
            let brightness: Double = UIScreen.main.brightness
            self.brightnessString = String(String(brightness).prefix(5))
            self.willChange.send()
        }
    }

    func stopScreenBrightness() {
        self.brightnessString = ""
        self.willChange.send()
    }
}
