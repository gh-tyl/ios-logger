import SwiftUI

struct LabelSmallAtom: View {
    @State var value: String

    var body: some View {
        Text(value)
            .padding()
    }
}

struct LabelSmallAtom_Previews: PreviewProvider {
    static var previews: some View {
        LabelSmallAtom(value: "58%")
            .previewLayout(.sizeThatFits)
    }
}
