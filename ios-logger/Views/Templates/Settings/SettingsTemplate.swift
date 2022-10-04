import SwiftUI

struct SettingsTemplate: View {
    var title: String
    var body: some View {
        VStack {
            TitleAtom(title: title)
            ScrollView {

            }
        }
    }
}

struct SettingsTemplate_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTemplate(title: "title")
    }
}
