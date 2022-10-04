import SwiftUI

struct LabelsPage: View {
    @EnvironmentObject var sensorItemModelData: SensorItemModelData

    var body: some View {
        LabelTemplate()
    }
}

struct LabelsPage_Previews: PreviewProvider {
    static var previews: some View {
        LabelsPage()
            .environmentObject(SensorItemModelData())
    }
}
