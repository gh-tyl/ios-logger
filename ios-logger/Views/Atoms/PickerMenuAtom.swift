import SwiftUI

struct PickerMenuAtom: View {
    @State var selection: Int = 0
    let data = ["acitivity 00", "acitivity 01", "acitivity 02", "acitivity 03"]

    var body: some View {
        Picker(selection: $selection, label: Text("Picker")) {
            ForEach(data, id:\.self) { value in
                Text("\(value)")
                    .tag(value)
                    .frame(maxWidth: .infinity)
                    .padding()
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
            .previewLayout(.sizeThatFits)
    }
}
