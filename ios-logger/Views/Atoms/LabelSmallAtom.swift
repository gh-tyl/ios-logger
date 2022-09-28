import SwiftUI

struct LabelSmallAtom: View {
    @State var value: String = "58%"

    var body: some View {
        Text(value)
            .padding()
    }
}

struct LabelSmallAtom_Previews: PreviewProvider {
    static var previews: some View {
        LabelSmallAtom()
            .previewLayout(.sizeThatFits)
    }
}
