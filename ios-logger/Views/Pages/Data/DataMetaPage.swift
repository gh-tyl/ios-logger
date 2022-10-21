import SwiftUI

struct DataMetaPage: View {
    @Binding var state: DataContentState

    var title: String = "Data"

    var body: some View {
        DataMetaTemplate(state: $state, title: title)
    }
}

struct DataMetaPage_Previews: PreviewProvider {
    static var previews: some View {
        DataMetaPage(state: .constant(.main))
    }
}
