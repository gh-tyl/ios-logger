import SwiftUI

struct LoggerPickersOrganism: View {
    let headlines = ["Activity", "Location"]

    var body: some View {
        VStack {
            ForEach(headlines, id: \.self) { headline in
                LoggerLabelPickerMolecule(headline: headline)
            }
        }
    }
}

struct LoggerPickersOrganism_Previews: PreviewProvider {
    static var previews: some View {
        LoggerPickersOrganism().previewLayout(.sizeThatFits)
    }
}
