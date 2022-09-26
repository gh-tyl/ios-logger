import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View{
        TabView {
            LoggerPage()
                .environmentObject(EnvironmentData())
                .tabItem {
                Text("Sensor Logs")
                Image(systemName: "doc")
            }
            LabelsPage().tabItem {
                Text("Labels")
                Image(systemName: "paperclip")
            }
            DataPage().tabItem {
                Text("Data")
                Image(systemName: "list.dash.header.rectangle")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(SensorItemModelData())
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
