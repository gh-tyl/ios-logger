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
                // TitleAtom(title: title)
                VStack{
                    PickerMenuAtom()
                    LoggerMemoTimeOrganism()
                }
                .frame(maxHeight: .infinity)
                ButtonSwitchLoggerAtom(state: $state, moveToName: "Data", moveTo: .data)
                ButtonNavigationAtom(content: LoggerPage(), label: "Stop")
            }
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct LoggerMemoPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerMemoPage(state: .constant(.memo))
            .environmentObject(LoggerModels())
            .environmentObject(LabelModels())
            .environmentObject(MemoModels())
    }
}
