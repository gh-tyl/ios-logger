import SwiftUI

struct LoggerMemoTemplate: View {
    @Binding var state: ContentState

    var isActive: Bool = true
    var title: String = "Memo"

    var body: some View {
        NavigationStack {
            VStack {
                TitleAtom(title: title)
                VStack{
                    PickerMenuAtom()
                    LoggerMemoTimeOrganism()
                }
                .frame(maxHeight: .infinity)
                ButtonSwitchAtom(state: $state, moveToName: "Data", moveTo: .data)
                ButtonExecFullAtom(label: "Stop")
                Spacer()
            }
        }
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LoggerMemoTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LoggerMemoTemplate(state: .constant(.memo))
            .previewLayout(.sizeThatFits)
    }
}
