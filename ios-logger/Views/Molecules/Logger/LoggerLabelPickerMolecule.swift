import SwiftUI

struct LoggerLabelPickerMolecule: View {
    @EnvironmentObject var labels: LabelsModel
    var category: String
    @Binding var selection: Int

    private var labelList: Array<LabelModel> {
            switch category {
            case "Activity":
                return labels.LabelActivities
            case "Location":
                return labels.LabelLocations
            default:
                return labels.LabelActivities
            }
        }

    var body: some View {
        VStack {
            HeadlineAtom(headline: category)
            PickerWheelAtom(data: labelList, selection: $selection)
        }
    }
}

struct LoggerLabelPickerMolecule_Previews: PreviewProvider {
    static var previews: some View {
        LoggerLabelPickerMolecule(
            category: "Activity", selection: .constant(0)
        ).previewLayout(.sizeThatFits)
    }
}
