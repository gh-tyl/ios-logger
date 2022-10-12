import SwiftUI

struct LoggerDataListOrganism: View {
//    @EnvironmentObject var loggerItemsModel: LoggerItemsModel
    @State var loggerItemsModel: LoggerItemsModel

    var body: some View {
        VStack {
            ForEach(loggerItemsModel.LoggerItems, id: \.id) { item in
//                LoggerDataMolecule(loggerItemModel: item)
                LoggerDataMolecule(loggerItemModel: .constant(item))
            }
        }
    }
}

struct LoggerDataListOrganism_Previews: PreviewProvider {
    static var previews: some View {
//        LoggerDataListOrganism(loggerItemsModel: .constant(LoggerItemsModel()))
        LoggerDataListOrganism(loggerItemsModel: LoggerItemsModel())
//            .environmentObject(LoggerItemsModel())
            .previewLayout(.sizeThatFits)
    }
}
