import SwiftUI

enum LoggerContentState {
    case data
    case memo
}

struct LoggerRecordingPage: View {
    @EnvironmentObject var loggerItemsModel: LoggerItemsModel
    @State var state: LoggerContentState = .data
    @State var lm: LoggerManager = LoggerManager()
    @StateObject var vm = LoggerRecordingPageVM()

    var body: some View {
        LoggerRecordingTemplate
    }

    private var LoggerRecordingTemplate: some View {
        NavigationStack {
            switch state {
            case .data:
                LoggerDataPage(state: $state)
            case .memo:
                LoggerMemoPage(state: $state)
            }
        }
        .navigationBarBackButtonHidden(true)
        .onAppear(perform: {
            lm.initFunctions(loggerItems: loggerItemsModel)
            vm.timer = Timer.scheduledTimer(withTimeInterval: vm.timeInterval, repeats: vm.isRepeat) { _ in lm.callFunctions(loggerItems: loggerItemsModel)
            }
        })
        .onDisappear(perform: {
            vm.timer?.invalidate()
            vm.timer = nil
            lm.stopFunctions(loggerItems: loggerItemsModel)
        })
    }
}

struct LoggerRecordingPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerRecordingPage(state: .data)
            .environmentObject(LoggerItemsModel())
    }
}
