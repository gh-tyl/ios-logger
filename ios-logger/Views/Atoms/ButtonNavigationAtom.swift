import SwiftUI

struct ButtonNavigationAtom<Content: View>: View {
    @EnvironmentObject var envData: EnvironmentData
    @State var isActive: Bool
    var content: Content
    @State private var imgName: String = "record.circle"
    @State private var imgSize: CGFloat = 50.0

    var body: some View {
        VStack {
            NavigationLink {
                content
            } label: {
                Image(systemName: imgName)
                    .font(.system(size: imgSize))
                    .padding()
            }
        }
    }
}

struct ButtonNavigationAtom_Previews: PreviewProvider {
    static var previews: some View {
        ButtonNavigationAtom(isActive: true, content: LoggerReadyPage())
            .previewLayout(.sizeThatFits)
    }
}
