import SwiftUI

struct ToggleLoggerItemModelAtom: View {
        @EnvironmentObject var loggers: LoggerModels
        @State var logger: LoggerModel
        @State var isSet: Bool

        var loggerIndex: Int {
            loggers.Loggers.firstIndex(where: {$0.id == logger.id})!
        }

        var body: some View {
            VStack {
                Toggle("", isOn: $isSet)
                    .onChange(of: isSet, perform: { flag in
                        loggers.Loggers[loggerIndex].isRecord = flag
                        print(loggers.Loggers[loggerIndex].itemNameEN, ":", loggers.Loggers[loggerIndex].isRecord)
                    })
                    .labelsHidden()
                    .padding()
            }
        }
}

struct ToggleLoggerItemModelAtom_Previews: PreviewProvider {
    static var previews: some View {
        let index: Int = 0
        ToggleLoggerItemModelAtom(
            logger: LoggerModels().Loggers[index],
            isSet: true)
        .environmentObject(LoggerModels())
    }
}
