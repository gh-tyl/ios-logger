import SwiftUI

struct LabelListMolecule: View {
    @State var label: String
    @EnvironmentObject var labels: LabelsModel
    private var labelList: Array<LabelModel> {
        switch label {
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
            ForEach(labelList, id: (\.id)) { item in
                ItemAtom(loggerItemNameEN: item.name)
            }
        }
    }
}

struct LabelListMolecule_Previews: PreviewProvider {
    static var previews: some View {
        LabelListMolecule(label: "Activity")
            .environmentObject(LabelsModel())
            .previewLayout(.sizeThatFits)
    }
}
