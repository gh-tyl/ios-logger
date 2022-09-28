import SwiftUI

struct PickerSetMolecule: View {
    var title: String = ""
    var height: CGFloat = 1.0
    var bar_color: Color = .gray

    var body: some View {
        VStack {
            TitleAtom(title: title, height: height, bar_color: bar_color)
            PickerWheelAtom()
        }
    }
}

struct PickerSetMolecule_Previews: PreviewProvider {
    static var previews: some View {
        PickerSetMolecule(
            title: "Activity", height: 1.0, bar_color: .gray
        ).previewLayout(.sizeThatFits)
    }
}
