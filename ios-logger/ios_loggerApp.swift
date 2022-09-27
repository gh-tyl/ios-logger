import SwiftUI

@main
struct ios_loggerApp: App {
    @StateObject private var sensorItemModelData = SensorItemModelData()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(sensorItemModelData)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
