import Foundation

extension DataMetaPage {
    @MainActor class DataMetaVM: ObservableObject {
        @Published var title: String = "Meta"
        @Published var moveToName: String = "Main"
        @Published var moveTo: DataContentState = .main
    }
}
