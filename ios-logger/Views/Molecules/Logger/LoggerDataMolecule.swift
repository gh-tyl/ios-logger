import SwiftUI

struct LoggerDataMolecule: View {
    @EnvironmentObject var loggerItemsModel: LoggerItemsModel
    @StateObject private var vm = LoggerDataOVM()
    @State var loggerItemModel: LoggerItemModel
//    @Binding var loggerItemModel: LoggerItemModel

    var body: some View {
        HStack {
            ItemAtom(loggerItemNameEN: loggerItemModel.itemNameEN)
            LabelSmallAtom(value: $loggerItemModel.value)
        }
        .frame(maxWidth: .infinity)
    }
}

struct LoggerDataMolecule_Previews: PreviewProvider {
    static var previews: some View {
        let index: Int = 0
        LoggerDataMolecule(loggerItemModel: LoggerItemsModel().LoggerItems[index])
//        LoggerDataMolecule(loggerItemModel: .constant(LoggerItemsModel().LoggerItems[index]))
            .previewLayout(.sizeThatFits)
            .environmentObject(LoggerItemsModel())
    }
}
