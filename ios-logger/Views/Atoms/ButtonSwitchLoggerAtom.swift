import SwiftUI

struct ButtonSwitchLoggerAtom: View {
    @Binding var state: LoggerContentState
    var function: ()
    var moveToName: String
    var moveTo: LoggerContentState

    var body: some View {
        Button(moveToName) {
            function
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
