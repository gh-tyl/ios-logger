import SwiftUI

struct LoggerItemMolecule: View {
    @State var logger: LoggerModel

    var body: some View {
        HStack {
            ItemAtom(loggerItemNameEN: logger.itemNameEN)
            ToggleLoggerItemModelAtom(logger: logger, isSet: logger.isRecord)
        }
        .frame(maxWidth: .infinity)
    }
}
struct LoggerItemMolecule_Previews: PreviewProvider {
    static var previews: some View {
        let index: Int = 0
        LoggerItemMolecule(logger: LoggerModels().Loggers[index])
            .previewLayout(.sizeThatFits)
    }
}
