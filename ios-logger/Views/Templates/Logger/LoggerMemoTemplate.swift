import SwiftUI

struct LoggerMemoTemplate: View {
    @Binding var state: LoggerContentState

    var isActive: Bool = true
    var title: String = "Memo"

    var body: some View {
        NavigationStack {
            VStack {
                TitleAtom(title: title)
                VStack{
                    PickerMenuAtom()
                    LoggerMemoTimeOrganism()
                }
                .frame(maxHeight: .infinity)
                ButtonSwitchLoggerAtom(state: $state, moveToName: "Data", moveTo: .data)
//                ButtonExecFullAtom(function: {})
                Spacer()
            }
        }
    }
}

struct LoggerMemoTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LoggerMemoTemplate(state: .constant(.memo))
    }
}
