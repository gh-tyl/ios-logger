import SwiftUI

struct LabelsPage: View {
    var isActive: Bool = true
    var title: String = "Label"
    var headlineActivity: String = "Activity"
    var headlineLocation: String = "Location"

    var body: some View {
        LabelTemplate(isActive: isActive, title: title, headlineActivity: headlineActivity, headlineLocation: headlineLocation)
    }
}

struct LabelsPage_Previews: PreviewProvider {
    static var previews: some View {
        LabelsPage()
//            .environmentObject(LoggerItemsModel())
    }
}
