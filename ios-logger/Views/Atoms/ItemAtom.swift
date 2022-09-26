import SwiftUI

struct ItemAtom: View {
    @State var sensorItemNameEN: String = ""

    var body: some View {
        Text(sensorItemNameEN)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
    }
}

struct ItemAtom_Previews: PreviewProvider {
    static var previews: some View {
        ItemAtom(sensorItemNameEN: "Hello World!").previewLayout(.sizeThatFits)
    }
}
