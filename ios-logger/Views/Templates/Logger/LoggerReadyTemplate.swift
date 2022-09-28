import SwiftUI

struct LoggerReadyTemplate: View {
    var isActive: Bool = true
    var title: String = "Ready"
    var height: CGFloat = 2.0
    var bar_color: Color = .gray

    var body: some View {
        VStack{
            ScrollView {
                TitleH1Atom(
                    title: title, height: height, bar_color: bar_color
                )
                LoggerPickersOrganism()
            }
            .frame(maxHeight: .infinity, alignment: .top)
            Spacer()
//            NavigationButtonView(isActive: isActive, content: RecordingView())
            Spacer()
        }
    }
}

struct LoggerReadyTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LoggerReadyTemplate().previewLayout(.sizeThatFits)
    }
}
