import SwiftUI

struct ToggleAtom: View {
    @State var isSet: Bool

    var body: some View {
        VStack {
            Toggle("", isOn: $isSet)
                .onChange(of: isSet, perform: { _ in
                    print(isSet)
                })
                .labelsHidden()
                .padding()
        }
    }
}

struct ToggleAtom_Previews: PreviewProvider {
    static var previews: some View {
        ToggleAtom(isSet: true)
                .previewLayout(.sizeThatFits)
    }
}
