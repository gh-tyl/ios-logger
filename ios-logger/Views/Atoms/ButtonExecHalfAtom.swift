import SwiftUI

struct ButtonExecHalfAtom: View {
    @State var label: String

    var body: some View {
        Button(label) {
        }
        .buttonStyle(ButtonDefaultAtom())
        .padding()
    }
}

struct ButtonExecHalfAtom_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExecHalfAtom(label: "label")
            .previewLayout(.sizeThatFits)
    }
}
