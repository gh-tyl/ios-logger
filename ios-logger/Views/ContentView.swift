import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View{
        TabView {
            LoggerPage().tabItem {
                Text("Logger")
                // Image(systemName: "doc")
                Image(systemName: "waveform.path.ecg")
            }
            LabelPage().tabItem {
                Text("Label")
                // Image(systemName: "paperclip")
                 Image(systemName: "square.and.pencil")
            }
            DataPage().tabItem {
                Text("Data")
                Image(systemName: "list.dash.header.rectangle")
            }
            SettingsPage().tabItem {
                Text("Setting")
                Image(systemName: "gear")
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
