import SwiftUI

struct LoggerLabelPickerMolecule: View {
    var headline: String
    var data: Array<String>

    var body: some View {
        VStack {
            HeadlineAtom(headline: headline)
            PickerWheelAtom(data: data)
        }
    }
}

struct LoggerLabelPickerMolecule_Previews: PreviewProvider {
    static var previews: some View {
        LoggerLabelPickerMolecule(
            headline: "Activity", data: ["0", "1", "2", "3", "4"]
        ).previewLayout(.sizeThatFits)
    }
}
