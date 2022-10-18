import SwiftUI

struct ButtonExecFullAtom: View {
    @StateObject var vm: ButtonExecFullAtomVM = ButtonExecFullAtomVM()
    var function: (() -> Void)

    var body: some View {
        Button(action: {
            function()
        }, label: {
            Image(systemName: vm.imgName)
                .font(.system(size: vm.imgSize))
                .padding()
        })
    }
}

extension ButtonExecFullAtom {
    @MainActor class ButtonExecFullAtomVM: ObservableObject {
        @Published var imgName: String = "record.circle"
        @Published var imgSize: CGFloat = 50.0
    }
}

struct ButtonExecFullAtom_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExecFullAtom(function: {})
            .previewLayout(.sizeThatFits)
    }
}
