import SwiftUI

struct LoggerReadyPage: View {
    @StateObject private var vm = LoggerReadyVM()

    var body: some View {
        LoggerReadyTemplate(isActive: vm.isActive, title: vm.title)
    }
}

struct LoggerReadyPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerReadyPage()
    }
}
