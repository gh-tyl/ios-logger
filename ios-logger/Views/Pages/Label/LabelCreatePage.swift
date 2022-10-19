import SwiftUI

struct LabelCreatePage: View {
    var title: String
    var label: String

    var body: some View {
        LabelCreateTemplate
    }

    private var LabelCreateTemplate: some View {
        VStack {
            TitleAtom(title: title)
            LabelCreateOrganism()
                .frame(maxHeight: .infinity)
//            ButtonExecFullAtom(function: {})
        }
    }
}

struct LabelCreatePage_Previews: PreviewProvider {
    static var previews: some View {
        LabelCreatePage(title: "title", label: "label")
    }
}
