import SwiftUI

struct LabelItemListOrganism: View {
    var category: String

    var body: some View {
        VStack {
            HeadlineAtom(headline: category)
            ScrollView {
                LabelListMolecule(category: category)
            }
        }
    }
}

struct LabelItemListOrganism_Previews: PreviewProvider {
    static var previews: some View {
        LabelItemListOrganism(category: "Activity")
            .previewLayout(.sizeThatFits)
    }
}
