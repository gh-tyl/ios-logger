import Foundation

final class MemoModels: ObservableObject {
    @Published var Memos: Array<MemoModel> = []

    init() {
        self.Memos = initMemos(memoDict: memoDict)
    }

    func initMemos(memoDict: Dictionary<String, String>) -> Array<MemoModel> {
        var memo: MemoModel
        var memos: Array<MemoModel> = []
        for (key, value) in memoDict {
            memo = MemoModel(
                configId: key,
                value: value)
            memos.append(memo)
        }
        return memos
    }
}

struct MemoModel: Hashable, Codable, Identifiable {
    var id: UUID = UUID()
    var configId: String
    var value: String
}
