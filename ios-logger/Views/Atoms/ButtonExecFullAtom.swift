import SwiftUI

struct ButtonExecFullAtom: View {
    @State var label: String

    var body: some View {
        Button(action: {
            print("Pushed button")
        }, label: {
            Text(label)
                .padding()
        })
    }
}

struct ButtonExecFullAtom_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExecFullAtom(label: "label")
            .previewLayout(.sizeThatFits)
    }
}
