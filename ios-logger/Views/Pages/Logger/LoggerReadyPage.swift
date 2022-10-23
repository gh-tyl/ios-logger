import SwiftUI

struct LoggerReadyPage: View {
    @EnvironmentObject var loggers: LoggerModels
    @EnvironmentObject var labels: LabelModels
    @State var lm: LoggerManager = LoggerManager()
    @StateObject private var vm = LoggerReadyVM()
    @State var selection: Int = 0

    var body: some View {
        LoggerReadyTemplate
            .onDisappear(perform: {
                for logger in loggers.Loggers {
                    if logger.configId == loggerConfig["Activity"] {
                        loggers.Loggers[loggers.Loggers.firstIndex(of: logger)!].value = labels.LabelActivities[vm.selectionActivity].name
                    } else if logger.configId == loggerConfig["Location"] {
                        loggers.Loggers[loggers.Loggers.firstIndex(of: logger)!].value = labels.LabelLocations[vm.selectionLocation].name
                    }
                }
            })
    }

    private var LoggerReadyTemplate: some View {
        NavigationStack {
            VStack{
                LoggerPickersOrganism
                ButtonNavigationAtom(
                    content: LoggerRecordingPage()
                )
                Spacer()
            }
            .navigationTitle(vm.title)
            .navigationBarTitleDisplayMode(.inline)
        }
    }

    private var LoggerPickersOrganism: some View {
        VStack {
            LoggerLabelPickerMolecule(category: vm.categoryActivity, selection: $vm.selectionActivity)
            LoggerLabelPickerMolecule(category: vm.categoryLocation, selection: $vm.selectionLocation)
        }
        .frame(maxHeight: .infinity)
    }
}

struct LoggerReadyPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerReadyPage()
            .environmentObject(LoggerModels())
            .environmentObject(LabelModels())
    }
}
