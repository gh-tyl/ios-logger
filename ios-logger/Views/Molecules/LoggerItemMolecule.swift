import SwiftUI

struct LoggerItemMolecule: View {
    @EnvironmentObject var loggers: LoggerModels
    @Binding var logger: LoggerModel
    @State var isSet: Bool = false

     var loggerIndex: Int {
         loggers.Loggers.firstIndex(where: {$0.id == logger.id})!
     }

    var body: some View {
        HStack {
            ItemAtom(itemName: logger.itemNameEN)
            ToggleAtom(isSet: $isSet)
        }
        .frame(maxWidth: .infinity)
         .onChange(of: isSet, perform: { flag in
             loggers.Loggers[loggerIndex].isRecord = flag
             print(loggers.Loggers[loggerIndex].itemNameEN, ":", loggers.Loggers[loggerIndex].isRecord)
         })
    }
}
struct LoggerItemMolecule_Previews: PreviewProvider {
    static var previews: some View {
        let index: Int = 0
        LoggerItemMolecule(
            logger: .constant(LoggerModels().Loggers[index])
        )
        .previewLayout(.sizeThatFits)
    }
}
