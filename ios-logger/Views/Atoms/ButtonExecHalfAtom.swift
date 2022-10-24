import SwiftUI

struct ButtonExecHalfAtom: View {
    @StateObject var vm: ButtonExecHalfAtomVM = ButtonExecHalfAtomVM()
    @State var label: String
    var function: (() -> Void)

    var body: some View {
        Button(label) {
            function()
        }
        .buttonStyle(ButtonDefaultAtom())
        .padding()
    }
}

extension ButtonExecHalfAtom {
    @MainActor class ButtonExecHalfAtomVM: ObservableObject {
        @Published var imgName: String = "record.circle"
        @Published var imgSize: CGFloat = 50.0
    }
}


struct ButtonExecHalfAtom_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExecHalfAtom(label: "label", function: {})
            .previewLayout(.sizeThatFits)
    }
}
