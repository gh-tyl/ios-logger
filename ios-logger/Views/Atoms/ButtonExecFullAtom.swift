import SwiftUI

struct ButtonExecFullAtom: View {
    var function: ()
//    var function: LoggerManager
    @StateObject var vm: ButtonExecFullAtomVM = ButtonExecFullAtomVM()

    var body: some View {
        Button(action: {

        }, label: {
            Image(systemName: vm.imgName)
                .font(.system(size: vm.imgSize))
                .padding()
        })
    }
}

struct ButtonExecFullAtom_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExecFullAtom(function: ())
            .previewLayout(.sizeThatFits)
    }
}
