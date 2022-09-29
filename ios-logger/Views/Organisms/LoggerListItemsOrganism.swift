import SwiftUI

struct LoggerListItemsOrganism: View {
    @EnvironmentObject var sensorItemModelData: SensorItemModelData

    var body: some View {
        VStack {
            ForEach(sensorItemModelData.SensorItems, id: \.id) { item in
                LoggerItemMolecule(sensorItemModel: item)
            }
        }
    }
}

struct LoggerListItemsOrganism_Previews: PreviewProvider {
    static var previews: some View {
        LoggerListItemsOrganism()
            .environmentObject(SensorItemModelData())
            .previewLayout(.sizeThatFits)
    }
}
