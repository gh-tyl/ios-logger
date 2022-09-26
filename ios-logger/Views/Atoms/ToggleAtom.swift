import SwiftUI

struct ToggleAtom: View {
    @EnvironmentObject var sensorItemModelData: SensorItemModelData
    @State private var isSet: Bool = false
    @State var sensorItemModel: SensorItemModel

    var sensorItemIndex: Int {
        sensorItemModelData.SensorItems.firstIndex(where: {$0.id == sensorItemModel.id})!
    }

    var body: some View {
        Toggle("", isOn: $isSet)
            .onChange(of: isSet, perform: { record in
                if record {
                    sensorItemModelData.SensorItems[sensorItemIndex].isRecord = true
                } else {
                    sensorItemModelData.SensorItems[sensorItemIndex].isRecord = false
                }
                print(sensorItemModelData.SensorItems[sensorItemIndex].itemNameEN, ":", sensorItemModelData.SensorItems[sensorItemIndex].isRecord)
            })
            .labelsHidden()
            .padding()
    }
}

struct ToggleAtom_Previews: PreviewProvider {
    static var previews: some View {
        let index: Int = 0
        ToggleAtom(sensorItemModel: SensorItemModelData().SensorItems[index])
                .previewLayout(.sizeThatFits)
    }
}
