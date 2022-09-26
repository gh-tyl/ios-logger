import SwiftUI

struct PickersOrganism: View {
    let titles = ["Activity", "Location"]

    var body: some View {
        VStack {
            ForEach(titles, id: \.self) { title in
                PickerSetMolecule(title: title)
            }
        }
    }
}

struct PickersOrganism_Previews: PreviewProvider {
    static var previews: some View {
        PickersOrganism().previewLayout(.sizeThatFits)
    }
}
