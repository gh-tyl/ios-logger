import SwiftUI

enum ContentState {
    case data
    case memo
}

struct LoggerRecordingPage: View {
    @EnvironmentObject var envData: EnvironmentData
    @State var state: ContentState = .data

    var body: some View {
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
    @Binding var state: ContentState

    static var previews: some View {
        LoggerRecordingPage(state: .data)
            .environmentObject(SensorItemModelData())
    }
}
