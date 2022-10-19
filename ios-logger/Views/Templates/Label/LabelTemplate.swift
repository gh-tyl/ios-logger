//import SwiftUI
//
//struct LabelTemplate: View {
//    var title: String
//    var headlineActivity: String
//    var headlineLocation: String
//
//    var body: some View {
//        NavigationStack {
//            VStack {
//                TitleAtom(title: title)
//                ScrollView {
//                    LabelItemListOrganism(headline: headlineActivity)
//                    LabelItemListOrganism(headline: headlineLocation)
//                }
//                ButtonNavigationAtom(content: LabelCreatePage(title: "title", label: "label"))
//            }
//        }
//    }
//}
//
//struct LabelTemplate_Previews: PreviewProvider {
//    static var previews: some View {
//        LabelTemplate(title: "title", headlineActivity: "headlineActivity", headlineLocation: "headlineLocation")
////            .environmentObject(LoggerItemsModel())
//    }
//}
