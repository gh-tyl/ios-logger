import SwiftUI

struct LabelTemplate: View {
    @EnvironmentObject var sensorItemModelData: SensorItemModelData
    var title: String = ""
    var headlineActivity: String = "Activity"
    var headlineLocation: String = "Location"

    var body: some View {
        NavigationStack {
            VStack {
                TitleAtom(title: title)
                ScrollView {
                    LabelItemListOrganism(headline: headlineActivity)
                    LabelItemListOrganism(headline: headlineLocation)
                }
                ButtonNavigationAtom(content: LabelCreatePage(title: "title", headline: "headline", label: "label"))
            }
        }
    }
}

struct LabelTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LabelTemplate(title: "Label")
            .environmentObject(SensorItemModelData())
            .previewLayout(.sizeThatFits)
    }
}
