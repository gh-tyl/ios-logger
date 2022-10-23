import SwiftUI

struct ToggleAtom: View {
    @Binding var isSet: Bool

    var body: some View {
        VStack {
            Toggle("", isOn: $isSet)
                .labelsHidden()
                .padding()
        }
    }
}

struct ToggleAtom_Previews: PreviewProvider {
    static var previews: some View {
        ToggleAtom(isSet: .constant(true))
                .previewLayout(.sizeThatFits)
    }
}
