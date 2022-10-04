import SwiftUI

struct LoggerDataTemplate: View {
    @Binding var state: LoggerContentState

    var isActive: Bool = true
    var title: String = "Data"

    var body: some View {
        NavigationStack {
            VStack {
                TitleAtom(
                    title: title
                )
                ScrollView {
                    LoggerListRecordingOrganism()
                }
                .frame(maxHeight: .infinity, alignment: .top)
                ButtonSwitchLoggerAtom(state: $state, moveToName: "Memo", moveTo: .memo)
                ButtonExecFullAtom(label: "Stop")
                Spacer()
            }
        }
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LoggerDataTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LoggerDataTemplate(state: .constant(.data))
            .environmentObject(SensorItemModelData())
    }
}
