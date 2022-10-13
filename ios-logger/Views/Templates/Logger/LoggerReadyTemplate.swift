import SwiftUI

struct LoggerReadyTemplate: View {
    var isActive: Bool
    var title: String

    var body: some View {
        NavigationStack {
            VStack{
                TitleAtom(
                    title: title
                )
                ScrollView {
                    LoggerPickersOrganism()
                }
                .frame(maxHeight: .infinity, alignment: .top)
            }
            ButtonNavigationAtom(
                isActive: isActive, content: LoggerRecordingPage()
            )
            Spacer()
        }
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LoggerReadyTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LoggerReadyTemplate(isActive: true, title: "title")
    }
}
