import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View{
        TabView {
            LoggerPage()
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
            SettingsPage().tabItem {
                Text("Settings")
                Image(systemName: "list.dash.header.rectangle")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
