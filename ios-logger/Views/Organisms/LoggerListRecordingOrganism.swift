import SwiftUI

struct LoggerListRecordingOrganism: View {
    @EnvironmentObject var loggerItemModelData: LoggerItemModelData

    var body: some View {
        VStack {
            ForEach(loggerItemModelData.LoggerItems, id: \.id) { item in
                LoggerDataOrganism(loggerItemModel: item)
            }
        }
    }
}

struct LoggerListRecordingOrganism_Previews: PreviewProvider {
    static var previews: some View {
        LoggerListRecordingOrganism()
            .environmentObject(LoggerItemModelData())
            .previewLayout(.sizeThatFits)
    }
}
