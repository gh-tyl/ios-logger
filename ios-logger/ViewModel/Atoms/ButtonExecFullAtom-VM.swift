import Foundation

extension ButtonExecFullAtom {
    @MainActor class ButtonExecFullAtomVM: ObservableObject {
        @Published var imgName: String = "record.circle"
        @Published var imgSize: CGFloat = 50.0
    }
}
