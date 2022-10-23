import Foundation

extension DataMainPage {
    @MainActor class DataMainVM: ObservableObject {
        @Published var title: String = "Data"
        @Published var moveToName: String = "Memo"
        @Published var moveTo: DataContentState = .meta
    }
}
