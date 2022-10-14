import SwiftUI

struct LabelTimeAtom: View {
    @State var currentDatetime = GetCurrentDatetime()
    var body: some View {
        Text(currentDatetime)
            .frame(maxWidth: .infinity)
            .padding()
            .onAppear(perform: {
                Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {_ in
                    currentDatetime = GetCurrentDatetime()
                }
            })
    }
}

struct LabelTimeAtom_Previews: PreviewProvider {
    static var previews: some View {
        LabelTimeAtom()
            .previewLayout(.sizeThatFits)
    }
}
