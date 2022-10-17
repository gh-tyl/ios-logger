import SwiftUI

enum LoggerContentState {
    case data
    case memo
}

struct LoggerRecordingPage: View {
    @State var state: LoggerContentState = .data
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
    }
}

struct LoggerRecordingPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerRecordingPage(state: .data)
            .environmentObject(LoggerItemsModel())
    }
}
