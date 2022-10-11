import SwiftUI

enum DataContentState {
    case main
    case meta
}

struct DataPage: View {
    @State var state: DataContentState = .main

    var body: some View {
        DataTemplate(state: state)
    }
}

struct DataPage_Previews: PreviewProvider {
    static var previews: some View {
        DataPage(state: .main)
            .environmentObject(LoggerItemsModel())
    }
}
