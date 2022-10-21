import SwiftUI

struct PickerWheelAtom: View {
    let data: Array<LabelModel>
    @Binding var selection: Int

    var body: some View {
        VStack {
            Picker("Favorite Color", selection: $selection, content: {
                ForEach(0..<data.count, content: { index in
                    Text(data[index].name)
                })
            })
            .pickerStyle(.wheel)
        }
    }
}

struct PickerWheelAtom_Previews: PreviewProvider {
    static var previews: some View {
        PickerWheelAtom(data: LabelsModel().LabelActivities, selection: .constant(0))
            .previewLayout(.sizeThatFits)
    }
}
