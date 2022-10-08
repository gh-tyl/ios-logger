import SwiftUI

struct LabelCreatePage: View {
    var title: String
    var label: String

    var body: some View {
        LabelCreateTemplate(title: title, label: label)
    }
}

struct LabelCreatePage_Previews: PreviewProvider {
    static var previews: some View {
        LabelCreatePage(title: "title", label: "label")
    }
}