import SwiftUI

struct LoggerReadyPage: View {
    @EnvironmentObject var loggerItemsModel: LoggerItemsModel
    @EnvironmentObject var labelsModel: LabelsModel
    @State var lm: LoggerManager = LoggerManager()
    @StateObject private var vm = LoggerReadyVM()
    @State var selection: Int = 0

    var body: some View {
        LoggerReadyTemplate
            .onDisappear(perform: {
                for var logger in loggerItemsModel.LoggerItems {
                    if logger.configId == loggerConfig["Activity"] {
                        loggerItemsModel.LoggerItems[loggerItemsModel.LoggerItems.firstIndex(of: logger)!].value = labelsModel.LabelActivities[vm.selectionActivity].name
                    } else if logger.configId == loggerConfig["Location"] {
                        loggerItemsModel.LoggerItems[loggerItemsModel.LoggerItems.firstIndex(of: logger)!].value = labelsModel.LabelLocations[vm.selectionLocation].name
                    }
                }
            })
    }

    private var LoggerReadyTemplate: some View {
        NavigationStack {
            VStack{
                TitleAtom(
                    title: vm.title
                )
                LoggerPickersOrganism
                .frame(maxHeight: .infinity, alignment: .top)
                ButtonNavigationAtom(
                    content: LoggerRecordingPage()
                )
                Spacer()
            }
        }
        .navigationTitle(vm.title)
        .navigationBarTitleDisplayMode(.inline)
    }

    private var LoggerPickersOrganism: some View {
        VStack {
            LoggerLabelPickerMolecule(category: vm.categoryActivity, selection: $vm.selectionActivity)
            LoggerLabelPickerMolecule(category: vm.categoryLocation, selection: $vm.selectionLocation)
        }
    }
}

struct LoggerReadyPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerReadyPage()
    }
}
