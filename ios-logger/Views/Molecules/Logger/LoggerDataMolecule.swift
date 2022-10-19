import SwiftUI

struct LoggerDataMolecule: View {
    @EnvironmentObject var loggerItemsModel: LoggerItemsModel
    @Binding var loggerItemModel: LoggerItemModel

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
        LoggerDataMolecule(loggerItemModel: .constant(LoggerItemsModel().LoggerItems[index]))
            .previewLayout(.sizeThatFits)
            .environmentObject(LoggerItemsModel())
    }
}
