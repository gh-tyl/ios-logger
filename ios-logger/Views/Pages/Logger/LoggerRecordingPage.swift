import SwiftUI

enum LoggerContentState {
    case data
    case memo
}

struct LoggerRecordingPage: View {
    @EnvironmentObject var envData: EnvironmentData
    @State var state: LoggerContentState = .data

    var body: some View {
        LoggerRecordingTemplate(state: state)
    }
}

struct LoggerRecordingPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerRecordingPage(state: .data)
            .environmentObject(SensorItemModelData())
    }
}
