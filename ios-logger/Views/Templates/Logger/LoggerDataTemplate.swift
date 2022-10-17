import SwiftUI

struct LoggerDataTemplate: View {
    @Binding var state: LoggerContentState

    @EnvironmentObject var loggerItemsModel: LoggerItemsModel
    var isActive: Bool
    var title: String
    // var function: () -> Void
    var function: LoggerManager

    var body: some View {
        NavigationStack {
            VStack {
                TitleAtom(
                    title: title
                )
                LabelTimeAtom()
                ScrollView {
                    LoggerDataListOrganism()
                }
                .frame(maxHeight: .infinity, alignment: .top)
                ButtonSwitchLoggerAtom(state: $state, moveToName: "Memo", moveTo: .memo)
                ButtonExecFullAtom(function: function.stopFunctions(loggerItems: &loggerItemsModel.LoggerItems))
//                ButtonNavigationAtom(isActive: true, content: LoggerPage())
                Spacer()
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct LoggerDataTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LoggerDataTemplate(state: .constant(.data), isActive: true, title: "title", function: LoggerManager())
//        LoggerDataTemplate(state: .constant(.data), loggerItemsModel: .constant(LoggerItemsModel()), isActive: true, title: "title")
            .environmentObject(LoggerItemsModel())
    }
}
