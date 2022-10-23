import SwiftUI

enum LoggerContentState {
    case data
    case memo
}

struct LoggerRecordingPage: View {
    @EnvironmentObject var loggers: LoggerModels
    @State var state: LoggerContentState = .data
    @State var lm: LoggerManager = LoggerManager()
    @StateObject var vm = LoggerRecordingPageVM()

    init() {
            UINavigationBar.setAnimationsEnabled(false)
    }

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
            lm.initFunctions(loggers: loggers)
            vm.timer = Timer.scheduledTimer(withTimeInterval: vm.timeInterval, repeats: vm.isRepeat) { _ in lm.callFunctions(loggers: loggers)
            }
        })
        .onDisappear(perform: {
            vm.timer?.invalidate()
            vm.timer = nil
            lm.stopFunctions(loggers: loggers)
        })
    }
}

struct LoggerRecordingPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerRecordingPage()
            .environmentObject(LoggerModels())
    }
}
