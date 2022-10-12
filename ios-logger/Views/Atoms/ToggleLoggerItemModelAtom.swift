import SwiftUI

struct ToggleLoggerItemModelAtom: View {
        @EnvironmentObject var loggerItemsModel: LoggerItemsModel
        @State var loggerItemModel: LoggerItemModel
        @State var isSet: Bool

        var loggerItemIndex: Int {
            loggerItemsModel.LoggerItems.firstIndex(where: {$0.id == loggerItemModel.id})!
        }

        var body: some View {
            VStack {
                Toggle("", isOn: $isSet)
                    .onChange(of: isSet, perform: { flag in
                        loggerItemsModel.LoggerItems[loggerItemIndex].isRecord = flag
                        print(loggerItemsModel.LoggerItems[loggerItemIndex].itemNameEN, ":", loggerItemsModel.LoggerItems[loggerItemIndex].isRecord)
                    })
                    .labelsHidden()
                    .padding()
            }
        }
}

struct ToggleLoggerItemModelAtom_Previews: PreviewProvider {
    static var previews: some View {
        let index: Int = 0
        ToggleLoggerItemModelAtom(
            loggerItemModel: LoggerItemsModel().LoggerItems[index],
            isSet: true)
        .environmentObject(LoggerItemsModel())
    }
}
