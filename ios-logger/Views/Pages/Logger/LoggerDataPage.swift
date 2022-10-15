import SwiftUI

struct LoggerDataPage: View {
    @Binding var state: LoggerContentState
    @EnvironmentObject var loggerItemsModel: LoggerItemsModel
    @StateObject private var vm = LoggerDataVM()

    var body: some View {
        LoggerDataTemplate(state: $state, isActive: vm.isActive, title: vm.title)
            .onAppear(perform: {
                vm.initFunctions(loggerItems: &loggerItemsModel.LoggerItems)
                vm.timer = Timer.scheduledTimer(withTimeInterval: vm.timeInterval, repeats: true) { _ in vm.callFunctions(loggerItems: &loggerItemsModel.LoggerItems)
                }
            })
            .onDisappear(perform: {
                vm.stopFunctions(loggerItems: &loggerItemsModel.LoggerItems)
            })
    }
}

struct LoggerDataPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerDataPage(state: .constant(.data))
            .environmentObject(LoggerItemsModel())
    }
}
