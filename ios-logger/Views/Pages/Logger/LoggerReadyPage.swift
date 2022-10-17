import SwiftUI

struct LoggerReadyPage: View {
    @EnvironmentObject var loggerItemsModel: LoggerItemsModel
//    @EnvironmentObject var lm: LoggerManager
    @State var lm: LoggerManager = LoggerManager()
    @StateObject private var vm = LoggerReadyVM()

    var body: some View {
        LoggerReadyTemplate
    }

    private var LoggerReadyTemplate: some View {
        NavigationStack {
            VStack{
                TitleAtom(
                    title: vm.title
                )
                ScrollView {
                    LoggerPickersOrganism
                }
                .frame(maxHeight: .infinity, alignment: .top)
                ButtonNavigationAtom(
                    content: LoggerRecordingPage()
//                    function: {
//                        lm.initFunctions(loggerItems: &loggerItemsModel.LoggerItems)
//                        vm.timer = Timer(timeInterval: vm.timeInterval, repeats: vm.isRepeat) {
//                            _ in lm.callFunctions(loggerItems: &loggerItemsModel.LoggerItems)
//                        }
//                    }
                )
//                ButtonExecFullAtom(
//                    function: {
//                        lm.initFunctions(loggerItems: &loggerItemsModel.LoggerItems)
//                        vm.timer = Timer.scheduledTimer(withTimeInterval: vm.timeInterval, repeats: true) { _ in lm.callFunctions(loggerItems: &loggerItemsModel.LoggerItems)
//                        }
//                    }
//                )
//                .onTapGesture {
//                    lm.initFunctions(loggerItems: &loggerItemsModel.LoggerItems)
//                    vm.timer = Timer(timeInterval: vm.timeInterval, repeats: vm.isRepeat) {
//                        _ in lm.callFunctions(loggerItems: &loggerItemsModel.LoggerItems)
//                    }
//                }
                Spacer()
            }
        }
        .navigationTitle(vm.title)
        .navigationBarTitleDisplayMode(.inline)
    }

    private var LoggerPickersOrganism: some View {
        ForEach(vm.headlines, id: \.self) { headline in
            LoggerLabelPickerMolecule(headline: headline, data: vm.data)
        }
    }
}

struct LoggerReadyPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerReadyPage()
//            .environmentObject(LoggerItemsModel())
    }
}
