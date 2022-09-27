import SwiftUI

struct NavigationButtonAtom<Content: View>: View {
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
                Image(systemName: imgName)
                    .foregroundColor(imgColor)
                    .font(.system(size: imgSize)
                    )
            }
        }
    }
}

struct NavigationButtonAtom_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButtonAtom(isActive: true, content: LoggerPage())
            .previewLayout(.sizeThatFits)
    }
}
