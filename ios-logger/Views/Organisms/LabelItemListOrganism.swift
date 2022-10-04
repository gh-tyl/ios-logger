import SwiftUI

struct LabelItemListOrganism: View {
    @EnvironmentObject var sensorItemModelData: SensorItemModelData
    var headline: String

    var body: some View {
        VStack {
            HeadlineAtom(headline: headline)
            ItemListMolecule()
        }
    }
}

struct LabelItemListOrganism_Previews: PreviewProvider {
    static var previews: some View {
        LabelItemListOrganism(headline: "Activity")
            .environmentObject(SensorItemModelData())
            .previewLayout(.sizeThatFits)
    }
}
