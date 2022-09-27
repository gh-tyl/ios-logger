import SwiftUI


class EnvironmentData: ObservableObject {
    @Published var isNavigationActive: Binding<Bool> = Binding<Bool>.constant(false)
}

struct LoggerPage: View {
    @EnvironmentObject var envData: EnvironmentData
        @State var isActive: Bool = true

        var body: some View {
            NavigationStack {
                LoggerTemplate()
            }
            .navigationTitle("Logger")
        }
}

struct LoggerPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerPage()
            .environmentObject(SensorItemModelData())
    }
}
