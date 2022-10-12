import SwiftUI

struct LabelSmallAtom: View {
    @Binding var value: String

    var body: some View {
        Text(value)
            .padding()
    }
}

struct LabelSmallAtom_Previews: PreviewProvider {
    static var previews: some View {
//        LabelSmallAtom(value: "58%")
        LabelSmallAtom(value: .constant("58%"))
            .previewLayout(.sizeThatFits)
    }
}
