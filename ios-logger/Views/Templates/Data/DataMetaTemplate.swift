import SwiftUI

struct DataMetaTemplate: View {
    @Binding var state: DataContentState

    @EnvironmentObject var loggerItemModelData: LoggerItemModelData
    var title: String
    var body: some View {
        VStack {
            TitleAtom(title: title)
            ScrollView {
                ItemListMolecule()
            }
            ButtonSwitchDataAtom(state: $state, moveToName: "Main", moveTo: .main)
        }
    }
}

struct DataMetaTemplate_Previews: PreviewProvider {
    static var previews: some View {
        DataMetaTemplate(state: .constant(.meta), title: "title")
            .environmentObject(LoggerItemModelData())
            .previewLayout(.sizeThatFits)
    }
}
