import SwiftUI

struct InputWithLabelMolecule: View {
    var headline: String
    var body: some View {
        VStack {
            HeadlineAtom(headline: headline)
            InputTextAtom()
        }
    }
}

struct InputWithLabelMolecule_Previews: PreviewProvider {
    static var previews: some View {
        InputWithLabelMolecule(headline: "Activity")
            .previewLayout(.sizeThatFits)
    }
}
