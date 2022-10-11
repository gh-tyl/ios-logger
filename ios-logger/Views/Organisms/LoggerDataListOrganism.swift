import SwiftUI

struct LoggerDataListOrganism: View {
    @EnvironmentObject var loggerItemsModel: LoggerItemsModel

    var body: some View {
        VStack {
            ForEach(loggerItemsModel.LoggerItems, id: \.id) { item in
                LoggerDataOrganism(loggerItemModel: item)
            }
        }
    }
}

struct LoggerDataListOrganism_Previews: PreviewProvider {
    static var previews: some View {
        LoggerDataListOrganism()
            .environmentObject(LoggerItemsModel())
            .previewLayout(.sizeThatFits)
    }
}
