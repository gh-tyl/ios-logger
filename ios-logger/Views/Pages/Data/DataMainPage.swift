import SwiftUI

struct DataMainPage: View {
    @Binding var state: DataContentState
    @StateObject var vm = DataMainVM()

    var body: some View {
        DataMainTemplate
    }

    private var DataMainTemplate: some View {
        VStack {
            ScrollView {
                DataListMolecule()
            }
            .frame(maxHeight: .infinity)
            ButtonSwitchDataAtom(state: $state, moveToName: vm.moveToName, moveTo: vm.moveTo)
        }
        .navigationTitle(vm.title)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
    }
}

struct DataMainPage_Previews: PreviewProvider {
    static var previews: some View {
        DataMainPage(state: .constant(.main))
    }
}
