import SwiftUI

struct LoggerListOrganism: View {
    @EnvironmentObject var sensorItemModelData: SensorItemModelData

    var body: some View {
        VStack {
            ForEach(sensorItemModelData.SensorItems, id: \.id) { item in
                LoggerItemMolecule(sensorItemModel: item)
            }
        }
    }
}

struct LoggerListOrganism_Previews: PreviewProvider {
    static var previews: some View {
        LoggerListOrganism()
            .environmentObject(SensorItemModelData())
            .previewLayout(.sizeThatFits)
    }
}
