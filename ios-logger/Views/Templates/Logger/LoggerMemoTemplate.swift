import SwiftUI

struct LoggerMemoTemplate: View {
    var body: some View {
        VStack {
            PickerMenuAtom()
            Spacer()
            LoggerMemoTimeOrganism()
            Spacer()
            ButtonNavigationAtom(content: LoggerRecordingPage())
            ButtonExecFullAtom(label: "Stop")
        }

    }
}

struct LoggerMemoTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LoggerMemoTemplate()
            .previewLayout(.sizeThatFits)
    }
}
