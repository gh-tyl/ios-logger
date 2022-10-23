import Foundation

extension DataMetaPage {
    @MainActor class DataMetaVM: ObservableObject {
        @Published var title: String = "Memo"
        @Published var moveToName: String = "Main"
        @Published var moveTo: DataContentState = .main
    }
}
