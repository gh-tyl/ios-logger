import SwiftUI

struct PickerMenuAtom: View {
    @EnvironmentObject var memoModels: MemoModels
    @State var selection: Int = 0

    var body: some View {
        Picker(selection: $selection, label: Text("Picker")) {
            ForEach(0 ..< memoModels.Memos.count) { index in
                Text(memoModels.Memos[index].value)
            }
        }
        .pickerStyle(.menu)
        .padding()
        .frame(maxWidth: .infinity)
    }
}

struct PickerMenuAtom_Previews: PreviewProvider {
    static var previews: some View {
        PickerMenuAtom()
            .environmentObject(MemoModels())
            .previewLayout(.sizeThatFits)
    }
}
