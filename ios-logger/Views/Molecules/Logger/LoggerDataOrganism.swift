import SwiftUI

struct LoggerDataOrganism: View {
    @State var sensorItemModel: SensorItemModel

    var body: some View {
        HStack {
            ItemAtom(sensorItemNameEN: sensorItemModel.itemNameEN)
            LabelSmallAtom(value: "60%")
        }.frame(maxWidth: .infinity)
    }
}

struct LoggerDataOrganism_Previews: PreviewProvider {
    static var previews: some View {
        let index: Int = 0
        LoggerDataOrganism(sensorItemModel: SensorItemModelData().SensorItems[index])
            .previewLayout(.sizeThatFits)
    }
}
