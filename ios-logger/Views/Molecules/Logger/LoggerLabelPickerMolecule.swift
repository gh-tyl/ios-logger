import SwiftUI

struct LoggerLabelPickerMolecule: View {
    var headline: String = ""

    var body: some View {
        VStack {
            HeadlineAtom(headline: headline)
            PickerWheelAtom()
        }
    }
}

struct LoggerLabelPickerMolecule_Previews: PreviewProvider {
    static var previews: some View {
        LoggerLabelPickerMolecule(
            headline: "Activity"
        ).previewLayout(.sizeThatFits)
    }
}
