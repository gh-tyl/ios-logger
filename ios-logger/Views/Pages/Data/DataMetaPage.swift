import SwiftUI

struct DataMetaPage: View {
    @Binding var state: DataContentState
    @StateObject var vm = DataMetaVM()

    var body: some View {
        DataMetaTemplate
    }

    private var DataMetaTemplate: some View {
        VStack {
            ScrollView {
                DataListMolecule()
            }
            ButtonSwitchDataAtom(state: $state, moveToName: vm.moveToName, moveTo: vm.moveTo)
        }
        .navigationTitle(vm.title)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
    }
}

struct DataMetaPage_Previews: PreviewProvider {
    static var previews: some View {
        DataMetaPage(state: .constant(.main))
    }
}
