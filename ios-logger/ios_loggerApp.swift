import SwiftUI

@main
struct ios_loggerApp: App {
    @StateObject private var loggerItemsModel = LoggerItemsModel()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(loggerItemsModel)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
