import SwiftUI

struct DataMainPage: View {
    @Binding var state: DataContentState

    var title: String = "Data"

    var body: some View {
        DataMainTemplate
    }

    private var DataMainTemplate: some View {
        VStack {
            TitleAtom(title: title)
            ScrollView {
                DataListMolecule()
            }
            .frame(maxHeight: .infinity)
            ButtonSwitchDataAtom(state: $state, moveToName: "Memo", moveTo: .meta)
        }
    }
}

struct DataMainPage_Previews: PreviewProvider {
    static var previews: some View {
        DataMainPage(state: .constant(.main))
            .environmentObject(LoggerItemsModel())
    }
}
