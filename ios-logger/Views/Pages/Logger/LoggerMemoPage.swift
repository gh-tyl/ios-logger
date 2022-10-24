import SwiftUI

struct LoggerMemoPage: View {
    @EnvironmentObject var memo: MemoModels
    @Binding var state: LoggerContentState
    var title: String = "Memo"
    @State var selection: Int = 0

    var body: some View {
        LoggerMemoTemplate
    }

    private var LoggerMemoTemplate: some View {
        NavigationStack {
            VStack {
                VStack{
                    PickerMenuAtom(selection: $selection)
                    LoggerMemoTimeOrganism
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

    private var LoggerMemoTimeOrganism: some View {
        VStack{
            LabelTimeAtom()
            LoggerMemoButtonsMolecule()
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
