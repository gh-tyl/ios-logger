import SwiftUI

struct LabelItemListOrganism: View {
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
//            .environmentObject(LoggerItemsModel())
            .previewLayout(.sizeThatFits)
    }
}
