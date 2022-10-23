import SwiftUI

struct LoggerListItemsOrganism: View {
    @EnvironmentObject var loggers: LoggerModels

    var body: some View {
        VStack {
            ForEach(loggers.Loggers, id: \.id) { logger in
                if logger.configId != "0" && Int(logger.configId) ?? 0 < 1000 {
                    LoggerItemMolecule(logger: .constant(logger))
                }
            }
        }
    }
}

struct LoggerListItemsOrganism_Previews: PreviewProvider {
    static var previews: some View {
        LoggerListItemsOrganism()
            .environmentObject(LoggerModels())
            .previewLayout(.sizeThatFits)
    }
}
