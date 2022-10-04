import SwiftUI

struct ItemListMolecule: View {
    @EnvironmentObject var sensorItemModelData: SensorItemModelData

    var body: some View {
        VStack {
            ForEach(sensorItemModelData.SensorItems, id: \.id) { item in
                ItemAtom(sensorItemNameEN: item.itemNameEN)
            }
        }
    }
}

struct ItemListMolecule_Previews: PreviewProvider {
    static var previews: some View {
        ItemListMolecule()
            .environmentObject(SensorItemModelData())
            .previewLayout(.sizeThatFits)
    }
}
