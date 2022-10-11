import SwiftUI

struct DataMainPage: View {
    @Binding var state: DataContentState

    var title: String = "Data"

    var body: some View {
        DataMainTemplate(state: $state, title: title)
    }
}

struct DataMainPage_Previews: PreviewProvider {
    static var previews: some View {
        DataMainPage(state: .constant(.main))
            .environmentObject(LoggerItemsModel())
    }
}
