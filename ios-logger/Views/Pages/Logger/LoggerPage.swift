import SwiftUI

struct LoggerPage: View {
    @StateObject private var vm = LoggerVM()

    var body: some View {
        LoggerTemplate
    }

    private var LoggerTemplate: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    LoggerListItemsOrganism()
                }
                .frame(maxHeight: .infinity)
                ButtonNavigationAtom(
                    content: LoggerReadyPage()
                )
                Spacer()
            }
            .navigationTitle(vm.title)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct LoggerPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerPage()
            .environmentObject(LoggerModels())
    }
}
