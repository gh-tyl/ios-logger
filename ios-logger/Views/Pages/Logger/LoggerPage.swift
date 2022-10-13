import SwiftUI

struct LoggerPage: View {
    @StateObject private var vm = LoggerVM()

    var body: some View {
        LoggerTemplate(isActive: vm.isActive, title: vm.title)
    }
}

struct LoggerPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerPage()
            .environmentObject(LoggerItemsModel())
    }
}
