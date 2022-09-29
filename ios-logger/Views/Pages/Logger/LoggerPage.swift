import SwiftUI


class EnvironmentData: ObservableObject {
    @Published var isNavigationActive: Binding<Bool> = Binding<Bool>.constant(false)
}

struct LoggerPage: View {
    @EnvironmentObject var envData: EnvironmentData
    @State var isActive: Bool = true
    var title: String = "Logger"

    var body: some View {
        VStack {
            TitleH1Atom(
                title: title
            )
            NavigationStack {
                LoggerTemplate()
            }
            .navigationTitle(title)
        }
    }
}

struct LoggerPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerPage()
            .environmentObject(SensorItemModelData())
    }
}
