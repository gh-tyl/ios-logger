import SwiftUI

struct ButtonAtoms: View {
    var body: some View {
        Button("Button Default") {
        }
        .buttonStyle(ButtonDefaultAtom())
    }
}

struct ButtonDefaultAtom: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: .infinity)
    }
}

struct ButtonAtom_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAtoms().previewLayout(.sizeThatFits)
    }
}
