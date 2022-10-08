import SwiftUI

struct HeadlineAtom: View {
    @State var headline: String
    let height: CGFloat = 2.0
    var color: Color = .gray

    var body: some View {
        VStack {
            Text(headline)
            .font(.headline)
            .fontWeight(.medium)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
        Rectangle()
            .fill(color)
//            .fill(.gray)
            .frame(height: height)
            .padding(.horizontal)
        }
    }

}

struct HeadlineAtom_Previews: PreviewProvider {
    static var previews: some View {
        HeadlineAtom(headline: "Headline")
            .previewLayout(.sizeThatFits)
    }
}
