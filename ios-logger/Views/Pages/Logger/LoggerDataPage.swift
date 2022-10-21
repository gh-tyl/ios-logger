import SwiftUI

struct LoggerDataPage: View {
    @Binding var state: LoggerContentState
    @EnvironmentObject var loggers: LoggerModels
    @StateObject private var vm = LoggerDataVM()

    var body: some View {
        LoggerDataTemplate
    }

    private var LoggerDataTemplate: some View {
        NavigationStack {
            VStack {
                TitleAtom(
                    title: vm.title
                )
                // LabelTimeAtom()
                ScrollView {
                    LoggerDataListOrganism
                }
                .frame(maxHeight: .infinity, alignment: .top)
                ButtonSwitchLoggerAtom(state: $state, moveToName: "Memo", moveTo: .memo)
                ButtonNavigationAtom(content: LoggerPage())
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
    }

    private var LoggerDataListOrganism: some View {
        VStack {
            ForEach(loggers.Loggers, id: \.id) { loggers in
                LoggerDataMolecule(logger: .constant(loggers))
            }
        }
    }
}

struct LoggerDataPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerDataPage(state: .constant(.data))
            .environmentObject(LoggerModels())
    }
}
