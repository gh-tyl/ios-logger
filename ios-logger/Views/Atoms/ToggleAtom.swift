import SwiftUI

struct ToggleAtom: View {
    @EnvironmentObject var loggerItemModelData: LoggerItemModelData
    @State var loggerItemModel: LoggerItemModel
    @State private var isSet: Bool = false

    var loggerItemIndex: Int {
        loggerItemModelData.LoggerItems.firstIndex(where: {$0.id == loggerItemModel.id})!
    }

    var body: some View {
        Toggle("", isOn: $isSet)
            .onChange(of: isSet, perform: { record in
                if record {
                    loggerItemModelData.LoggerItems[loggerItemIndex].isRecord = true
                } else {
                    loggerItemModelData.LoggerItems[loggerItemIndex].isRecord = false
                }
                print(loggerItemModelData.LoggerItems[loggerItemIndex].itemNameEN, ":", loggerItemModelData.LoggerItems[loggerItemIndex].isRecord)
            })
            .labelsHidden()
            .padding()
    }
}

struct ToggleAtom_Previews: PreviewProvider {
    static var previews: some View {
        let index: Int = 0
        ToggleAtom(loggerItemModel: LoggerItemModelData().LoggerItems[index])
                .previewLayout(.sizeThatFits)
    }
}
