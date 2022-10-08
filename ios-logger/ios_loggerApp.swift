import SwiftUI

@main
struct ios_loggerApp: App {
    @StateObject private var loggerItemModelData = LoggerItemModelData()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(loggerItemModelData)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
