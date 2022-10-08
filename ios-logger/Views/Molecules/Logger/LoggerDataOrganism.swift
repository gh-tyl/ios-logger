import SwiftUI

struct LoggerDataOrganism: View {
    @State var loggerItemModel: LoggerItemModel

    var body: some View {
        HStack {
            ItemAtom(loggerItemNameEN: loggerItemModel.itemNameEN)
            LabelSmallAtom(value: "60%")
        }
        .frame(maxWidth: .infinity)
    }
}

struct LoggerDataOrganism_Previews: PreviewProvider {
    static var previews: some View {
        let index: Int = 0
        LoggerDataOrganism(loggerItemModel: LoggerItemModelData().LoggerItems[index])
            .previewLayout(.sizeThatFits)
    }
}
