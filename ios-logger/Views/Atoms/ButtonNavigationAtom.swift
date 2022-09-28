import SwiftUI

struct ButtonNavigationAtom<Content: View>: View {
    @EnvironmentObject var envData: EnvironmentData
    @State var isActive: Bool = false
    var content: Content
    var imgName: String = "record.circle"
    var imgColor: Color = .yellow
    var imgSize: CGFloat = 50.0
    var body: some View {
        VStack {
            NavigationLink {
                content
            } label: {
                Button("Button Default") {
                }
                .buttonStyle(ButtonDefaultAtom())
            }
        }
//        Button label
//        VStack {
//            NavigationLink {
//                content
//            } label: {
//                Image(systemName: imgName)
//                    .foregroundColor(imgColor)
//                    .font(.system(size: imgSize)
//                    )
//            }
//        }
    }
}

struct ButtonNavigationAtom_Previews: PreviewProvider {
    static var previews: some View {
        ButtonNavigationAtom(isActive: true, content: LoggerPage())
            .previewLayout(.sizeThatFits)
    }
}
