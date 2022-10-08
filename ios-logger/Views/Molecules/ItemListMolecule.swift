import SwiftUI

struct ItemListMolecule: View {
    @EnvironmentObject var loggerItemModelData: LoggerItemModelData

    var body: some View {
        VStack {
            ForEach(loggerItemModelData.LoggerItems, id: \.id) { item in
                ItemAtom(loggerItemNameEN: item.itemNameEN)
            }
        }
    }
}

struct ItemListMolecule_Previews: PreviewProvider {
    static var previews: some View {
        ItemListMolecule()
            .environmentObject(LoggerItemModelData())
            .previewLayout(.sizeThatFits)
    }
}
