import SwiftUI

struct TitleHIAtom: View {
    @State var title: String = ""
    let height: CGFloat = 2.0
//    var color: Color = .gray

    var body: some View {
        VStack {
            Text(title)
            .font(.title)
            .fontWeight(.medium)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
        Rectangle()
//            .fill(color)
            .fill(.gray)
            .frame(height: height)
        }
    }
}

struct TitleHIAtom_Previews: PreviewProvider {
    static var previews: some View {
        TitleHIAtom(
            title: "title"
        ).previewLayout(.sizeThatFits)
    }
}
