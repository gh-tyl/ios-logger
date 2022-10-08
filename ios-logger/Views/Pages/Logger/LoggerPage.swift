import SwiftUI

class EnvironmentData: ObservableObject {
    @Published var isNavigationActive: Binding<Bool> = Binding<Bool>.constant(false)
}

struct LoggerPage: View {
    // Set args
    @EnvironmentObject var envData: EnvironmentData
    @State var isActive: Bool = true
    var title: String = "Logger"

    var body: some View {
        LoggerTemplate(isActive: isActive, title: title)
    }
}

struct LoggerPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerPage()
            .environmentObject(LoggerItemModelData())
    }
}
