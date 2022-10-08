import Foundation
import Combine

class Record {
    func StartRecording(for LoggerItems: [LoggerItemModel]) {
        for item in LoggerItems {
            if item.isRecord && item.initClass != nil {
                print("Start function")
                print(item.itemNameEN, item.itemNameJA)
                item.initClass
            } else {
            }
        }
    }

    func StopRecording(for LoggerItems: [LoggerItemModel]) {
        for item in LoggerItems {
            if item.isRecord && item.initClass != nil {
                print("Stop function")
                print(item.itemNameEN, item.itemNameJA)
            } else {
            }
        }
    }
}
