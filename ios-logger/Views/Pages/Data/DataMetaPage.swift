import SwiftUI

struct DataMetaPage: View {
    @Binding var state: DataContentState

    var title: String = "Data"

    var body: some View {
        DataMetaTemplate
    }

    private var DataMetaTemplate: some View {
        VStack {
            ScrollView {
                DataListMolecule()
            }
            ButtonSwitchDataAtom(state: $state, moveToName: "Main", moveTo: .main)
        }
    }
}

struct DataMetaPage_Previews: PreviewProvider {
    static var previews: some View {
        DataMetaPage(state: .constant(.main))
    }
}
