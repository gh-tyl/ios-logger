import SwiftUI

struct ItemAtom: View {
    @State var loggerItemNameEN: String

    var body: some View {
        Text(loggerItemNameEN)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
    }
}

struct ItemAtom_Previews: PreviewProvider {
    static var previews: some View {
        ItemAtom(loggerItemNameEN: "Hello World!")
            .previewLayout(.sizeThatFits)
    }
}
