import SwiftUI

struct ButtonExecFullAtom: View {
    @State var label: String
    @State private var imgName: String = "record.circle"
    @State private var imgSize: CGFloat = 50.0

    var body: some View {
        Button(action: {
            print("Pushed button")
        }, label: {
            Image(systemName: imgName)
                .font(.system(size: imgSize))
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
