import SwiftUI

struct LabelCreateOrganism: View {
    var headlineCategory: String = "Category"
    @State var headline: String = "headlineCategory"
    @State var selection: Int = 0

    var body: some View {
        VStack {
            PickerWithLabelMolecule(headline: headlineCategory, selection: $selection)
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
