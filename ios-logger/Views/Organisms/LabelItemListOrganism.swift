import SwiftUI

struct LabelItemListOrganism: View {
    @EnvironmentObject var loggerItemModelData: LoggerItemModelData
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
            .environmentObject(LoggerItemModelData())
            .previewLayout(.sizeThatFits)
    }
}
