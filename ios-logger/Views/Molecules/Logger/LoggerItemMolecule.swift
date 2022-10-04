import SwiftUI

struct LoggerItemMolecule: View {
    @State var sensorItemModel: SensorItemModel

    var body: some View {
        HStack {
            ItemAtom(sensorItemNameEN: sensorItemModel.itemNameEN)
            ToggleAtom(sensorItemModel: sensorItemModel)
        }
        .frame(maxWidth: .infinity)
    }
}

struct LoggerItemMolecule_Previews: PreviewProvider {
    static var previews: some View {
        let index: Int = 0
        LoggerItemMolecule(sensorItemModel: SensorItemModelData().SensorItems[index])
            .previewLayout(.sizeThatFits)
    }
}
