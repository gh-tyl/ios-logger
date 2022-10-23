import SwiftUI

struct ButtonNavigationAtom<Content: View>: View {
    var content: Content
    @State private var imgName: String = "record.circle"
    @State private var imgSize: CGFloat = 50.0
    var label: String

    var body: some View {
        NavigationLink {
            content
        } label: {
//            Image(systemName: imgName)
//                .font(.system(size: imgSize))
//                .padding()
            Text(label)
                .foregroundColor(Color(.systemBlue))
                .frame(maxWidth: .maximum(200, 200))
                .padding()
        }
    }
}

struct ButtonNavigationAtom_Previews: PreviewProvider {
    static var previews: some View {
        ButtonNavigationAtom(content: LoggerPage(), label: "Navigation")
            .previewLayout(.sizeThatFits)
    }
}
