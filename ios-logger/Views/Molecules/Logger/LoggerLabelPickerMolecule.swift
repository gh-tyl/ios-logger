import SwiftUI

struct LoggerLabelPickerMolecule: View {
    var category: String
    @EnvironmentObject var labels: LabelsModel
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
            PickerWheelAtom(data: labelList)
        }
    }
}

struct LoggerLabelPickerMolecule_Previews: PreviewProvider {
    static var previews: some View {
        LoggerLabelPickerMolecule(
            category: "Activity"
        ).previewLayout(.sizeThatFits)
    }
}
