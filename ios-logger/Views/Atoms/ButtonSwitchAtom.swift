import SwiftUI

struct ButtonSwitchAtom: View {
    @Binding var state: ContentState
    var moveToName: String
    var moveTo: ContentState

    var body: some View {
        Button(moveToName) {
            state = moveTo
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}

struct ButtonSwitchAtom_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSwitchAtom(state: .constant(.data), moveToName: "Memo", moveTo: .memo)
            .previewLayout(.sizeThatFits)
    }
}
