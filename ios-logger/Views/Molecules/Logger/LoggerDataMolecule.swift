import SwiftUI

struct LoggerDataMolecule: View {
//    @State var loggerItemModel: LoggerItemModel
    @Binding var loggerItemModel: LoggerItemModel
    @StateObject private var vm = LoggerDataOVM()

    var body: some View {
        HStack {
            ItemAtom(loggerItemNameEN: loggerItemModel.itemNameEN)
            LabelSmallAtom(value: $loggerItemModel.value)
//                .onAppear(perform: {
//                    vm.timer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) {
//                        _ in
////                        print("LoggerDataOrganism")
////                        vm.updateValue(loggerItem: &loggerItemModel)
//                    }
//                })
        }
        .frame(maxWidth: .infinity)
    }
}

struct LoggerDataMolecule_Previews: PreviewProvider {
    static var previews: some View {
        let index: Int = 0
//        LoggerDataMolecule(loggerItemModel: LoggerItemsModel().LoggerItems[index])
        LoggerDataMolecule(loggerItemModel: .constant(LoggerItemsModel().LoggerItems[index]))
            .previewLayout(.sizeThatFits)
    }
}
