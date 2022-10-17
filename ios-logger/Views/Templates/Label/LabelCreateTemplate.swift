import SwiftUI

struct LabelCreateTemplate: View {
    var title: String
    var label: String

    var body: some View {
        VStack {
            TitleAtom(title: title)
            LabelCreateOrganism()
                .frame(maxHeight: .infinity)
//            ButtonExecFullAtom(function: {})
        }
    }
}

struct LabelCreateTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LabelCreateTemplate(title: "Label", label: "Add")
            .previewLayout(.sizeThatFits)
    }
}
