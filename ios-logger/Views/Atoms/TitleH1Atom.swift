import SwiftUI

struct TitleH1Atom: View {
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

struct TitleH1Atom_Previews: PreviewProvider {
    static var previews: some View {
        TitleH1Atom(
            title: "title", height: 2.0, bar_color: .gray
        ).previewLayout(.sizeThatFits)
    }
}
