import SwiftUI

struct TitleH1Atom: View {
    @State var title: String = ""
    let height: CGFloat = 2.0
    var bar_color: Color = .gray

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
            title: "title"
        ).previewLayout(.sizeThatFits)
    }
}
