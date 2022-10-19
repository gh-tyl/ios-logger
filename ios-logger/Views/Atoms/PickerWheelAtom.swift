import SwiftUI

struct PickerWheelAtom: View {
    @State var selection: Int = 0
    let data: Array<LabelModel>

    var body: some View {
        Picker(selection: $selection, label: Text("Picker")) {
            ForEach(data, id:\.self) { value in
                Text("\(value.name)")
                    .tag(value.name)
            }
        }
        .pickerStyle(.wheel)
    }
}

struct PickerWheelAtom_Previews: PreviewProvider {
    static var previews: some View {
        PickerWheelAtom(data: LabelsModel().LabelActivities)
            .previewLayout(.sizeThatFits)
    }
}
