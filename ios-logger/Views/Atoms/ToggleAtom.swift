import SwiftUI

struct ToggleAtom: View {
    @EnvironmentObject var loggerItemsModel: LoggerItemsModel
    @State var loggerItemModel: LoggerItemModel

//    @Binding var isSet: Bool
    @State var isSet: Bool = false

    var sensorItemIndex: Int {
        loggerItemsModel.LoggerItems.firstIndex(where: {$0.id == loggerItemModel.id})!
    }

    func testPrint() {
        if isSet {
            print(loggerItemsModel.LoggerItems[0])
        }
    }

    var body: some View {
        VStack {
            Toggle("", isOn: $isSet)
                .onChange(of: isSet, perform: { record in
                    if record {
                        loggerItemsModel.LoggerItems[sensorItemIndex].isRecord = true
                    } else {
                        loggerItemsModel.LoggerItems[sensorItemIndex].isRecord = false
                    }
                    print(loggerItemsModel.LoggerItems[sensorItemIndex].itemNameEN, ":", loggerItemsModel.LoggerItems[sensorItemIndex].isRecord)
                })
                .labelsHidden()
                .padding()
//            Toggle("", isOn: $isSet)
//                .labelsHidden()
//                .padding()
            Button {
                testPrint()
            } label: {
                Text("sample")
            }
        }
    }
}

//struct ToggleAtom_Previews: PreviewProvider {
//    static var previews: some View {
//        ToggleAtom(isSet: .constant(false))
//                .previewLayout(.sizeThatFits)
//    }
//}
