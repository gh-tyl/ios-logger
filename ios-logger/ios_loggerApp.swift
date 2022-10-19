import SwiftUI

@main
struct ios_loggerApp: App {
    @StateObject private var loggerItemsModel = LoggerItemsModel()
    @StateObject private var labelsModel = LabelsModel()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(loggerItemsModel)
                .environmentObject(labelsModel)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
