import SwiftUI

struct LoggerPage: View {
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
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct LoggerPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerPage()
    }
}
