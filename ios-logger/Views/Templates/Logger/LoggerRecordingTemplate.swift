import SwiftUI

struct LoggerRecordingTemplate: View {
    var body: some View {
        VStack {
            LoggerListRecordingOrganism()
            Spacer()
            ButtonNavigationAtom(content: LoggerMemoPage())
            ButtonExecFullAtom(label: "Stop")
        }
    }
}

struct LoggerRecordingTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LoggerRecordingTemplate()
            .environmentObject(SensorItemModelData())
            .previewLayout(.sizeThatFits)
    }
}
