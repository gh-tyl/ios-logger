import SwiftUI

struct TitleAtom: View {
    @State var title: String
    let height: CGFloat = 2.0
    var color: Color = .gray

    var body: some View {
        VStack {
            Text(title)
            .font(.title)
            .fontWeight(.medium)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        Rectangle()
            .fill(color)
            .frame(height: height)
        }
    }
}

struct TitleAtom_Previews: PreviewProvider {
    static var previews: some View {
        TitleAtom(
            title: "title"
        ).previewLayout(.sizeThatFits)
    }
}
