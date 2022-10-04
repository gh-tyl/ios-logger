import SwiftUI

struct LabelCreateOrganism: View {
    var headline: String

    var body: some View {
        VStack {
            PickerWithLabelMolecule(headline: headline)
            InputWithLabelMolecule(headline: headline)
        }
    }
}

struct LabelCreateOrganism_Previews: PreviewProvider {
    static var previews: some View {
        LabelCreateOrganism(headline: "Category")
            .previewLayout(.sizeThatFits)
    }
}
