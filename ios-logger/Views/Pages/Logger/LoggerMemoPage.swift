import SwiftUI

struct LoggerMemoPage: View {
    @Binding var state: LoggerContentState
    var title: String = "Memo"

    var body: some View {
        LoggerMemoTemplate
    }

    private var LoggerMemoTemplate: some View {
        NavigationStack {
            VStack {
                TitleAtom(title: title)
                VStack{
                    PickerMenuAtom()
                    LoggerMemoTimeOrganism()
                }
                .frame(maxHeight: .infinity)
                ButtonSwitchLoggerAtom(state: $state, moveToName: "Data", moveTo: .data)
//                ButtonExecFullAtom(function: lm.stopFunctions(loggerItems: &loggerItemsModel.LoggerItems))
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct LoggerMemoPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerMemoPage(state: .constant(.memo))
    }
}
