import SwiftUI

struct LoggerPage: View {
    @EnvironmentObject var loggerItemsModel: LoggerItemsModel
    @StateObject private var vm = LoggerVM()

    var body: some View {
        LoggerTemplate
    }

    private var LoggerTemplate: some View {
        NavigationStack {
            VStack {
                TitleAtom(
                    title: vm.title
                )
                ScrollView {
                    LoggerListItemsOrganism()
                }
                .frame(maxHeight: .infinity, alignment: .top)
                ButtonNavigationAtom(
                    content: LoggerReadyPage()
                )
            }
        }
        .navigationBarBackButtonHidden(true)
    }

//    private var LoggerListItemsOrganism: some View {
//        VStack {
//            ForEach(loggerItemsModel.LoggerItems, id: \.id) { item in
//                if item.configId != "0" {
//                    LoggerItemMolecule(loggerItemModel: item)
//                }
//            }
//        }
//    }
}

struct LoggerPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerPage()
            .environmentObject(LoggerItemsModel())
    }
}
