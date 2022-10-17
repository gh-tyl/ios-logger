import SwiftUI

struct PickerWheelAtom: View {
    @State var selection: Int = 0
    let data: Array<String>

    var body: some View {
        Picker(selection: $selection, label: Text("Picker")) {
            ForEach(data, id:\.self) { value in
                Text("\(value)")
                    .tag(value)
            }
        }
        .pickerStyle(.wheel)
    }
}

struct PickerWheelAtom_Previews: PreviewProvider {
    static var previews: some View {
        PickerWheelAtom(data: ["0", "1", "2", "3", "4"])
            .previewLayout(.sizeThatFits)
    }
}
