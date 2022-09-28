import SwiftUI

struct LoggerTemplate: View {
    var isActive: Bool = true
    var title: String = "Logger"
    var height: CGFloat = 2.0
    var bar_color: Color = .gray

    var body: some View {
        VStack{
            ScrollView {
                TitleAtom(
                    title: title, height: height, bar_color: bar_color
                )
                LoggerListOrganism()
            }
            .frame(maxHeight: .infinity, alignment: .top)
            Spacer()
            ButtonNavigationAtom(
                isActive: isActive, content: ReadyPage()
            )
            Spacer()
            }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LoggerTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LoggerTemplate()
            .environmentObject(SensorItemModelData())
    }
}
