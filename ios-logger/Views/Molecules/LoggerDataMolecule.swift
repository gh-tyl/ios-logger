import SwiftUI

struct LoggerDataMolecule: View {
    @Binding var logger: LoggerModel

    var body: some View {
        HStack {
            ItemAtom(loggerItemNameEN: logger.itemNameEN)
            LabelSmallAtom(value: $logger.value)
        }
        .frame(maxWidth: .infinity)
    }
}

struct LoggerDataMolecule_Previews: PreviewProvider {
    static var previews: some View {
        let index: Int = 0
        LoggerDataMolecule(logger: .constant(LoggerModels().Loggers[index]))
            .previewLayout(.sizeThatFits)
    }
}
