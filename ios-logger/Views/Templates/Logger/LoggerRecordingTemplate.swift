import SwiftUI

struct LoggerRecordingTemplate: View {
    @EnvironmentObject var envData: EnvironmentData
    @State var state: LoggerContentState = .data

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

struct LoggerRecordingTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LoggerRecordingTemplate(state: .data)
            .environmentObject(SensorItemModelData())
    }
}
