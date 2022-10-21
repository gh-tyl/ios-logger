import SwiftUI

struct ItemAtom: View {
    @State var itemName: String

    var body: some View {
        Text(itemName)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
    }
}

struct ItemAtom_Previews: PreviewProvider {
    static var previews: some View {
        ItemAtom(itemName: "Hello World!")
            .previewLayout(.sizeThatFits)
    }
}
