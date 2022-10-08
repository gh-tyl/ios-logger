import SwiftUI

struct LoggerItemMolecule: View {
    @State var loggerItemModel: LoggerItemModel

    var body: some View {
        HStack {
            ItemAtom(loggerItemNameEN: loggerItemModel.itemNameEN)
            ToggleAtom(loggerItemModel: loggerItemModel)
        }
        .frame(maxWidth: .infinity)
    }
}

struct LoggerItemMolecule_Previews: PreviewProvider {
    static var previews: some View {
        let index: Int = 0
        LoggerItemMolecule(loggerItemModel: LoggerItemModelData().LoggerItems[index])
            .previewLayout(.sizeThatFits)
    }
}
