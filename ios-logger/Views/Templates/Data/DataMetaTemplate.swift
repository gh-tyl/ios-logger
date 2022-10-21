import SwiftUI

struct DataMetaTemplate: View {
    @Binding var state: DataContentState
    @EnvironmentObject var loggerModels: LoggerModels

    var title: String
    var body: some View {
        VStack {
            TitleAtom(title: title)
            ScrollView {
                DataListMolecule()
            }
            ButtonSwitchDataAtom(state: $state, moveToName: "Main", moveTo: .main)
        }
    }
}

struct DataMetaTemplate_Previews: PreviewProvider {
    static var previews: some View {
        DataMetaTemplate(state: .constant(.meta), title: "title")
            .environmentObject(LoggerModels())
            .previewLayout(.sizeThatFits)
    }
}
