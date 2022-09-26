import SwiftUI

struct ReadyTemplate: View {
    var isActive: Bool = true
    var title: String = "Ready"
    var height: CGFloat = 2.0
    var bar_color: Color = .gray

    var body: some View {
        VStack{
            ScrollView {
                TitleAtom(
                    title: title, height: height, bar_color: bar_color
                )
                PickersOrganism()
            }
            .frame(maxHeight: .infinity, alignment: .top)
            Spacer()
//            NavigationButtonView(isActive: isActive, content: RecordingView())
            Spacer()
        }
    }
}

struct ReadyTemplate_Previews: PreviewProvider {
    static var previews: some View {
        ReadyTemplate().previewLayout(.sizeThatFits)
    }
}
