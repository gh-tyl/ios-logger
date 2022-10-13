import SwiftUI

struct LoggerDataTemplate: View {
    @Binding var state: LoggerContentState

    var isActive: Bool
    var title: String

    var body: some View {
        NavigationStack {
            VStack {
                TitleAtom(
                    title: title
                )
                ScrollView {
                    LoggerDataListOrganism()
                }
                .frame(maxHeight: .infinity, alignment: .top)
                ButtonSwitchLoggerAtom(state: $state, moveToName: "Memo", moveTo: .memo)
                ButtonExecFullAtom(label: "Stop")
                Spacer()
            }
        }
    }
}

struct LoggerDataTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LoggerDataTemplate(state: .constant(.data), isActive: true, title: "title")
//        LoggerDataTemplate(state: .constant(.data), loggerItemsModel: .constant(LoggerItemsModel()), isActive: true, title: "title")
            .environmentObject(LoggerItemsModel())
    }
}
