import SwiftUI

struct LoggerDataPage: View {
    @Binding var state: ContentState

    @EnvironmentObject var envData: EnvironmentData
    var isActive: Bool = true
    var title: String = "Data"

    var body: some View {
        LoggerDataTemplate(state: $state)
    }
}

struct LoggerDataPage_Previews: PreviewProvider {
    @Binding var state: ContentState

    static var previews: some View {
        LoggerDataPage(state: .constant(.data))
            .environmentObject(SensorItemModelData())
    }
}
