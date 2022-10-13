import SwiftUI

struct ItemListMolecule: View {
    @EnvironmentObject var loggerItemsModel: LoggerItemsModel

    var body: some View {
        VStack {
            ForEach(loggerItemsModel.LoggerItems, id: \.id) { item in
                ItemAtom(loggerItemNameEN: item.itemNameEN)
            }
        }
    }
}

struct ItemListMolecule_Previews: PreviewProvider {
    static var previews: some View {
        ItemListMolecule()
            .environmentObject(LoggerItemsModel())
            .previewLayout(.sizeThatFits)
    }
}
