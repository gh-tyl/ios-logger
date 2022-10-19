import SwiftUI

struct LoggerReadyPage: View {
    @State var lm: LoggerManager = LoggerManager()
    @StateObject private var vm = LoggerReadyVM()

    var body: some View {
        LoggerReadyTemplate
    }

    private var LoggerReadyTemplate: some View {
        NavigationStack {
            VStack{
                TitleAtom(
                    title: vm.title
                )
                LoggerPickersOrganism
                .frame(maxHeight: .infinity, alignment: .top)
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
            LoggerLabelPickerMolecule(category: vm.categoryActivity)
            LoggerLabelPickerMolecule(category: vm.categoryLocation)
        }
    }
}

struct LoggerReadyPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerReadyPage()
    }
}
