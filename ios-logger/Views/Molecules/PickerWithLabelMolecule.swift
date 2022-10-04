import SwiftUI

struct PickerWithLabelMolecule: View {
    var headline: String
    var body: some View {
        VStack {
            HeadlineAtom(headline: headline)
            PickerMenuAtom()
        }
    }
}

struct PickerWithLabelMolecule_Previews: PreviewProvider {
    static var previews: some View {
        PickerWithLabelMolecule(headline: "Category")
            .previewLayout(.sizeThatFits)
    }
}
