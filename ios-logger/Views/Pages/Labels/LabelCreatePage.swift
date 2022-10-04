import SwiftUI

struct LabelCreatePage: View {
    var title: String
    var headline: String
    var label: String

    var body: some View {
        LabelCreateTemplate(title: title, headline: headline, label: label)
    }
}

struct LabelCreatePage_Previews: PreviewProvider {
    static var previews: some View {
        LabelCreatePage(title: "title", headline: "headline", label: "label")
    }
}
