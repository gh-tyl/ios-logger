import SwiftUI

struct LabelCreateTemplate: View {
    var title: String
    var label: String

    var body: some View {
        VStack {
            TitleAtom(title: title)
            LabelCreateOrganism()
                .frame(maxHeight: .infinity)
            ButtonExecFullAtom(label: label)
        }
    }
}

struct LabelCreateTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LabelCreateTemplate(title: "Label", label: "Add")
            .previewLayout(.sizeThatFits)
    }
}
