import SwiftUI

struct LoggerListItemsOrganism: View {
    @EnvironmentObject var loggerItemsModel: LoggerItemsModel

    var body: some View {
        VStack {
            ForEach(loggerItemsModel.LoggerItems, id: \.id) { item in
                if item.configId != "0" && Int(item.configId) ?? 0 < 1000 {
                    LoggerItemMolecule(loggerItemModel: item)
                }
            }
        }
    }
}

struct LoggerListItemsOrganism_Previews: PreviewProvider {
    static var previews: some View {
        LoggerListItemsOrganism()
            .environmentObject(LoggerItemsModel())
            .previewLayout(.sizeThatFits)
    }
}
