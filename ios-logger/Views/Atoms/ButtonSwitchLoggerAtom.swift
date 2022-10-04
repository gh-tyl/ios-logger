import SwiftUI

struct ButtonSwitchLoggerAtom: View {
    @Binding var state: LoggerContentState
    var moveToName: String
    var moveTo: LoggerContentState

    var body: some View {
        Button(moveToName) {
            state = moveTo
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}

struct ButtonSwitchLoggerAtom_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSwitchLoggerAtom(state: .constant(.data), moveToName: "Memo", moveTo: .memo)
            .previewLayout(.sizeThatFits)
    }
}
