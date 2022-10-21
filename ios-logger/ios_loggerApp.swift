import SwiftUI

@main
struct ios_loggerApp: App {
    @StateObject private var loggerModels = LoggerModels()
    @StateObject private var labelModels = LabelModels()
    @StateObject private var memoModels = MemoModels()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(loggerModels)
                .environmentObject(labelModels)
                .environmentObject(memoModels)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
