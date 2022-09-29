import SwiftUI

struct LoggerMemoButtonsMolecule: View {
    var body: some View {
        HStack {
            ButtonExecHalfAtom(label: "Start")
            ButtonExecHalfAtom(label: "Stop")
        }
    }
}

struct LoggerMemoButtonsMolecule_Previews: PreviewProvider {
    static var previews: some View {
        LoggerMemoButtonsMolecule()
    }
}
