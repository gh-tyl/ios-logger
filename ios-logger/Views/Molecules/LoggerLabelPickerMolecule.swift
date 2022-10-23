import SwiftUI

struct LoggerLabelPickerMolecule: View {
    @EnvironmentObject var labels: LabelModels
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
                .frame(maxHeight: UIScreen.main.bounds.size.height / 4)
                .clipped()
        }
    }
}

struct LoggerLabelPickerMolecule_Previews: PreviewProvider {
    static var previews: some View {
        LoggerLabelPickerMolecule(
            category: "Activity", selection: .constant(0)
        )
        .environmentObject(LabelModels())
        .previewLayout(.sizeThatFits)
    }
}
