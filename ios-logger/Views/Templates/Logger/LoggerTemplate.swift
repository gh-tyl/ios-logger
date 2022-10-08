import SwiftUI

struct LoggerTemplate: View {
    var isActive: Bool
    var title: String

    var body: some View {
        NavigationStack {
            VStack {
                TitleAtom(
                    title: title
                )
                ScrollView {
                    LoggerListItemsOrganism()
                }
                .frame(maxHeight: .infinity, alignment: .top)
                ButtonNavigationAtom(
                    isActive: isActive, content: LoggerReadyPage()
                )
                Spacer()
            }
        }
    }
}

struct LoggerTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LoggerTemplate(isActive: true, title: "title")
            .environmentObject(LoggerItemModelData())
    }
}
