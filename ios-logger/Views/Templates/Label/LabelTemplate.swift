import SwiftUI

struct LabelTemplate: View {
//    @EnvironmentObject var loggerItemsModel: LoggerItemsModel()
    var isActive: Bool
    var title: String
    var headlineActivity: String
    var headlineLocation: String

    var body: some View {
        NavigationStack {
            VStack {
                TitleAtom(title: title)
                ScrollView {
                    LabelItemListOrganism(headline: headlineActivity)
                    LabelItemListOrganism(headline: headlineLocation)
                }
                ButtonNavigationAtom(isActive: isActive, content: LabelCreatePage(title: "title", label: "label"))
            }
        }
    }
}

struct LabelTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LabelTemplate(isActive: true, title: "title", headlineActivity: "headlineActivity", headlineLocation: "headlineLocation")
//            .environmentObject(LoggerItemsModel())
    }
}
