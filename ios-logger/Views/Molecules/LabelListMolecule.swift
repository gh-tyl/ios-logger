import SwiftUI

struct LabelListMolecule: View {
    @State var category: String
    @EnvironmentObject var labels: LabelModels
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
            ForEach(labelList, id: (\.id)) { item in
                ItemAtom(itemName: item.name)
            }
        }
    }
}

struct LabelListMolecule_Previews: PreviewProvider {
    static var previews: some View {
        LabelListMolecule(category: "Activity")
            .environmentObject(LabelModels())
            .previewLayout(.sizeThatFits)
    }
}
