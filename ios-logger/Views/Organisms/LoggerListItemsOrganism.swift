import SwiftUI

struct LoggerListItemsOrganism: View {
    @EnvironmentObject var loggerItemModelData: LoggerItemModelData

    var body: some View {
        VStack {
            ForEach(loggerItemModelData.LoggerItems, id: \.id) { item in
                LoggerItemMolecule(loggerItemModel: item)
            }
        }
    }
}

struct LoggerListItemsOrganism_Previews: PreviewProvider {
    static var previews: some View {
        LoggerListItemsOrganism()
            .environmentObject(LoggerItemModelData())
            .previewLayout(.sizeThatFits)
    }
}
