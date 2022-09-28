import SwiftUI

struct LoggerRecordingPage: View {
    var isNavigationBarBackButtonHidden: Bool = false
    var isActive: Bool = false
    var body: some View {
        VStack {
//            ButtonNavigationAtom(isActive: isActive, content: LoggerPage())
        }
        .navigationBarBackButtonHidden(isNavigationBarBackButtonHidden)
    }
}

struct LoggerRecordingPage_Previews: PreviewProvider {
    static var previews: some View {
        LoggerRecordingPage()
    }
}
