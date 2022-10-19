import SwiftUI

struct LoggerReadyPage: View {
    @State var lm: LoggerManager = LoggerManager()
    @StateObject private var vm = LoggerReadyVM()

    var body: some View {
        LoggerReadyTemplate
            .onDisappear(perform: {
                print(vm.selectionActivity)
                print(vm.selectionLocation)
            })
    }

    private var LoggerReadyTemplate: some View {
        NavigationStack {
            VStack{
                TitleAtom(
                    title: vm.title
                )
                LoggerPickersOrganism
                .frame(maxHeight: .infinity, alignment: .top)
                Text(String(vm.selectionActivity))
                Text(String(vm.selectionLocation))
                ButtonNavigationAtom(
                    content: LoggerRecordingPage()
                )
                Spacer()
            }
        }
        .navigationTitle(vm.title)
        .navigationBarTitleDisplayMode(.inline)
    }

    private var LoggerPickersOrganism: some View {
        VStack {
            LoggerLabelPickerMolecule(category: vm.categoryActivity, selection: $vm.selectionActivity)
            LoggerLabelPickerMolecule(category: vm.categoryLocation, selection: $vm.selectionLocation)
        }
    }
}

struct LoggerReadyPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerReadyPage()
    }
}
