import SwiftUI

struct LoggerDataOrganism: View {
    @State var loggerItemModel: LoggerItemModel
    @StateObject private var vm = LoggerDataOVM()

    var body: some View {
        HStack {
            ItemAtom(loggerItemNameEN: loggerItemModel.itemNameEN)
//            LabelSmallAtom(value: loggerItemModel.value)
            LabelSmallAtom(value: $loggerItemModel.value)
                .onAppear(perform: {
                    vm.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
                        _ in
//                        vm.callFunctions(loggerItemsModel: &loggerItemModel)
                        vm.updateValue(loggerItem: &loggerItemModel)
                    }
                })
        }
        .frame(maxWidth: .infinity)
    }
}

struct LoggerDataOrganism_Previews: PreviewProvider {
    static var previews: some View {
        let index: Int = 0
        LoggerDataOrganism(loggerItemModel: LoggerItemsModel().LoggerItems[index])
            .previewLayout(.sizeThatFits)
    }
}
