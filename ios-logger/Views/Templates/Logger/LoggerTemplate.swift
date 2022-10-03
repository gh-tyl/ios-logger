import SwiftUI

struct LoggerTemplate: View {
    var isActive: Bool = true
    var title: String = "Logger"

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
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LoggerTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LoggerTemplate()
            .environmentObject(SensorItemModelData())
    }
}
