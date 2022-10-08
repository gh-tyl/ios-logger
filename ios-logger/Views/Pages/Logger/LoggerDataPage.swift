import SwiftUI

struct LoggerDataPage: View {
    @Binding var state: LoggerContentState

    @EnvironmentObject var envData: EnvironmentData
    var isActive: Bool = true
    var title: String = "Data"

    var body: some View {
        LoggerDataTemplate(state: $state)
    }
}

struct LoggerDataPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerDataPage(state: .constant(.data))
            .environmentObject(LoggerItemModelData())
    }
}
