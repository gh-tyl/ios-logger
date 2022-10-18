//import SwiftUI
//
//struct DataMainTemplate: View {
//    @Binding var state: DataContentState
//
//    @EnvironmentObject var LoggerItemsModel: LoggerItemsModel
//    var title: String
//
//    var body: some View {
//        VStack {
//            TitleAtom(title: title)
//            ScrollView {
//                ItemListMolecule()
//            }
//            ButtonSwitchDataAtom(state: $state, moveToName: "Memo", moveTo: .meta)
//        }
//    }
//}
//
//struct DataMainTemplate_Previews: PreviewProvider {
//    static var previews: some View {
//        DataMainTemplate(state: .constant(.main), title: "title")
//            .environmentObject(LoggerItemsModel())
//    }
//}
