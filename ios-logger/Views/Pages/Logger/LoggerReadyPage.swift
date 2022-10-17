import SwiftUI

struct LoggerReadyPage: View {
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
                ScrollView {
                    LoggerPickersOrganism
                }
                .frame(maxHeight: .infinity, alignment: .top)
            }
            ButtonNavigationAtom(
                content: LoggerRecordingPage()
            )
            Spacer()
        }
        .navigationTitle(vm.title)
        .navigationBarTitleDisplayMode(.inline)
    }

    private var LoggerPickersOrganism: some View {
        ForEach(vm.headlines, id: \.self) { headline in
            LoggerLabelPickerMolecule(headline: headline, data: vm.data)
        }
    }
}

struct LoggerReadyPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerReadyPage()
    }
}
