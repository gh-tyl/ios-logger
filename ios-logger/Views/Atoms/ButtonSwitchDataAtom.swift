import SwiftUI

struct ButtonSwitchDataAtom: View {
    @Binding var state: DataContentState
    var moveToName: String
    var moveTo: DataContentState

    var body: some View {
        Button(moveToName) {
            state = moveTo
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}

struct ButtonSwitchDataAtom_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSwitchDataAtom(state: .constant(.main), moveToName: "Meta", moveTo: .meta)
            .previewLayout(.sizeThatFits)
    }
}
