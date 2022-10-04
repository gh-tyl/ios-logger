import SwiftUI

struct InputTextAtom: View {
    var body: some View {
        TextField(
            "User name (email address)", text: .constant("text")
            )
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .border(.secondary)
            .padding()
    }
}

struct InputTextAtom_Previews: PreviewProvider {
    static var previews: some View {
        InputTextAtom()
            .previewLayout(.sizeThatFits)
    }
}
