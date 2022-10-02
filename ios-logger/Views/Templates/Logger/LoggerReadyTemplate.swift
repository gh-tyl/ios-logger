import SwiftUI

struct LoggerReadyTemplate: View {
    var isActive: Bool = true
    var title: String = "Ready"
    var height: CGFloat = 2.0
    var bar_color: Color = .gray

    var body: some View {
        VStack{
            ScrollView {
                TitleHIAtom(
                    title: title
                )
                LoggerPickersOrganism()
            }
//            .frame(maxHeight: .infinity, alignment: .top)
            .frame(maxHeight: .leastNormalMagnitude)
            ButtonNavigationAtom(content: LoggerRecordingPage(isNavigationBarBackButtonHidden: false))
        }
    }
}

struct LoggerReadyTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LoggerReadyTemplate()
            .previewLayout(.sizeThatFits)
    }
}
