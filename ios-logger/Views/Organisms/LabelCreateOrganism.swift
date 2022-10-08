import SwiftUI

struct LabelCreateOrganism: View {
    var headlineCategory: String = "Category"
    @State var headline: String = "headlineCategory"

    var body: some View {
        VStack {
            PickerWithLabelMolecule(headline: headlineCategory)
            InputWithLabelMolecule(headline: headline)
        }
    }
}

struct LabelCreateOrganism_Previews: PreviewProvider {
    static var previews: some View {
        LabelCreateOrganism()
            .previewLayout(.sizeThatFits)
    }
}
