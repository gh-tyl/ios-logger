import SwiftUI

enum DataContentState {
    case main
    case meta
}

struct DataPage: View {
    @State var state: DataContentState = .main

    var body: some View {
        DataTemplate
    }

    private var DataTemplate: some View {
        NavigationStack {
            switch state {
            case .main:
                DataMainPage(state: $state)
            case .meta:
                DataMetaPage(state: $state)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct DataPage_Previews: PreviewProvider {
    static var previews: some View {
        DataPage(state: .main)
            .environmentObject(LoggerItemsModel())
    }
}
