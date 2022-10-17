import SwiftUI

struct LoggerDataPage: View {
    @Binding var state: LoggerContentState
    @EnvironmentObject var loggerItemsModel: LoggerItemsModel
    @StateObject private var vm = LoggerDataVM()
    @State var lm = LoggerManager()

    var body: some View {
        LoggerDataTemplate(state: $state, isActive: vm.isActive, title: vm.title)
            .onAppear(perform: {
                lm.initFunctions(loggerItems: &loggerItemsModel.LoggerItems)
                vm.timer = Timer.scheduledTimer(withTimeInterval: vm.timeInterval, repeats: vm.isRepeat) { _ in lm.callFunctions(loggerItems: &loggerItemsModel.LoggerItems)
                }
            })
            .onDisappear(perform: {
                lm.stopFunctions(loggerItems: &loggerItemsModel.LoggerItems)
//                vm.isRepeat = false
            })
    }
}

struct LoggerDataPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerDataPage(state: .constant(.data))
            .environmentObject(LoggerItemsModel())
    }
}
