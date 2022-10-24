import SwiftUI

struct LoggerMemoButtonsMolecule: View {
    @EnvironmentObject var loggers: LoggerModels
    var memoManager: MemoManager = MemoManager()
    @State private var isSet: Bool = false

    var body: some View {
        HStack {
            ButtonExecHalfAtom(label: "Start", function: {
                memoManager.startFunction(loggers: loggers)
                isSet = true
            })
            .disabled(isSet)
            .background(isSet ? Color.gray : Color.blue)
            ButtonExecHalfAtom(label: "Stop", function: {
                memoManager.stopFunction(loggers: loggers)
                isSet = false
            })
            .disabled(!isSet)
            .background(isSet ? Color.blue : Color.gray)
        }
    }
}

struct LoggerMemoButtonsMolecule_Previews: PreviewProvider {
    static var previews: some View {
        LoggerMemoButtonsMolecule()
            .environmentObject(LoggerModels())
    }
}
