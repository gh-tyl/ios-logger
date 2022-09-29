import SwiftUI

struct LoggerLabelPickerMolecule: View {
    var title: String = ""
    var height: CGFloat = 1.0
    var bar_color: Color = .gray

    var body: some View {
        VStack {
            TitleH1Atom(title: title)
            PickerWheelAtom()
        }
    }
}

struct LoggerLabelPickerMolecule_Previews: PreviewProvider {
    static var previews: some View {
        LoggerLabelPickerMolecule(
            title: "Activity", height: 1.0, bar_color: .gray
        ).previewLayout(.sizeThatFits)
    }
}
