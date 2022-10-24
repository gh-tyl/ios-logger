import SwiftUI

struct PickerMenuAtom: View {
    @EnvironmentObject var loggers: LoggerModels
    @EnvironmentObject var memos: MemoModels
    @Binding var selection: Int

    var body: some View {
        Picker(selection: $selection, label: Text("Picker")) {
            ForEach(0 ..< memos.Memos.count) { index in
                Text(memos.Memos[index].value)
            }
        }
        .onChange(of: selection) { selection in
            for (idx, logger) in loggers.Loggers.enumerated() {
                if logger.configId == loggerConfig["Memo"] {
                    loggers.Loggers[idx].value = memos.Memos[selection].value
                }
            }
        }
        .pickerStyle(.menu)
        .padding()
        .frame(maxWidth: .infinity)
    }
}

struct PickerMenuAtom_Previews: PreviewProvider {
    static var previews: some View {
        PickerMenuAtom(selection: .constant(0))
            .environmentObject(LoggerModels())
            .environmentObject(MemoModels())
            .previewLayout(.sizeThatFits)
    }
}
