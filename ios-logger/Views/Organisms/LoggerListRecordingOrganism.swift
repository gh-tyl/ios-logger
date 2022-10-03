import SwiftUI

struct LoggerListRecordingOrganism: View {
    @EnvironmentObject var sensorItemModelData: SensorItemModelData

    var body: some View {
        VStack {
            ForEach(sensorItemModelData.SensorItems, id: \.id) { item in
                LoggerDataOrganism(sensorItemModel: item)
            }
        }
    }
}

struct LoggerListRecordingOrganism_Previews: PreviewProvider {
    static var previews: some View {
        LoggerListRecordingOrganism()
            .environmentObject(SensorItemModelData())
            .previewLayout(.sizeThatFits)
    }
}
