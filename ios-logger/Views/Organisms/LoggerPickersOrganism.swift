import SwiftUI

struct LoggerPickersOrganism: View {
    let titles = ["Activity", "Location"]

    var body: some View {
        VStack {
            ForEach(titles, id: \.self) { title in
                LoggerLabelPickerMolecule(title: title)
            }
        }
    }
}

struct LoggerPickersOrganism_Previews: PreviewProvider {
    static var previews: some View {
        LoggerPickersOrganism().previewLayout(.sizeThatFits)
    }
}
