import SwiftUI

struct LoggerMemoPage: View {
    @Binding var state: ContentState

    var isActive: Bool = true
    var title: String = "Memo"

    var body: some View {
        LoggerMemoTemplate(state: $state)
    }
}

struct LoggerMemoPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerMemoPage(state: .constant(.memo))
    }
}
