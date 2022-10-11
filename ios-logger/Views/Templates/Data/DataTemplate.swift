import SwiftUI

struct DataTemplate: View {
    @State var state: DataContentState = .main

    var body: some View {
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

struct DataTemplate_Previews: PreviewProvider {
    static var previews: some View {
        DataTemplate(state: .main)
            .environmentObject(LoggerItemsModel())
    }
}
