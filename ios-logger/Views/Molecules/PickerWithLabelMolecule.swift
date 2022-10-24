import SwiftUI

struct PickerWithLabelMolecule: View {
    var headline: String
    @Binding var selection: Int

    var body: some View {
        VStack {
            HeadlineAtom(headline: headline)
            PickerMenuAtom(selection: $selection)
        }
    }
}

struct PickerWithLabelMolecule_Previews: PreviewProvider {
    static var previews: some View {
        PickerWithLabelMolecule(headline: "Category", selection: .constant(0))
            .previewLayout(.sizeThatFits)
    }
}
