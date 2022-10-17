import SwiftUI

struct ButtonExecFullAtom: View {
    @StateObject var vm: ButtonExecFullAtomVM = ButtonExecFullAtomVM()
    var function: ()
//    var function: LoggerManager

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
