import SwiftUI

struct LabelTimeAtom: View {
    var body: some View {
        Text("00:00:00")
            .frame(maxWidth: .infinity)
            .padding()
    }
}

struct LabelTimeAtom_Previews: PreviewProvider {
    static var previews: some View {
        LabelTimeAtom()
            .previewLayout(.sizeThatFits)
    }
}
