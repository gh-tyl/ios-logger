import SwiftUI

struct TitleAtom: View {
    @State var title: String = ""
    let height: CGFloat
    let bar_color: Color

    var body: some View {
        VStack {
            Text(title)
            .font(.title)
            .fontWeight(.medium)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
        Rectangle()
            .fill(bar_color)
            .frame(height: height)
            .padding(.horizontal)
        }
    }
}

struct TitleAtom_Previews: PreviewProvider {
    static var previews: some View {
        TitleAtom(
            title: "title", height: 2.0, bar_color: .gray
        ).previewLayout(.sizeThatFits)
    }
}