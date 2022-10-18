import SwiftUI

struct LabelItemListOrganism: View {
    var headline: String

    var body: some View {
        VStack {
            HeadlineAtom(headline: headline)
            // temporary
            DataListMolecule()
        }
    }
}

struct LabelItemListOrganism_Previews: PreviewProvider {
    static var previews: some View {
        LabelItemListOrganism(headline: "Activity")
            .previewLayout(.sizeThatFits)
    }
}
