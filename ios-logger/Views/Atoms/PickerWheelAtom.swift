import SwiftUI

struct PickerWheelAtom: View {
    @Binding var selection: Int
    @State var test: Int = 0
    let data: Array<LabelModel>

    var body: some View {
        Picker(selection: $test, label: Text("Picker")) {
            ForEach(data, id:\.self) { value in
                Text("\(value.name)")
                    .tag(value.configId)
            }
        }
        .pickerStyle(.wheel)
        Text("In Picker: \(test)")
    }
}

struct PickerWheelAtom_Previews: PreviewProvider {
    static var previews: some View {
        PickerWheelAtom(selection: .constant(0), data: LabelsModel().LabelActivities)
            .previewLayout(.sizeThatFits)
    }
}
