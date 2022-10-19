import SwiftUI

struct LabelSmallAtom: View {
    @EnvironmentObject var loggerItemsModel: LoggerItemsModel
    @Binding var value: String

    var body: some View {
        Text(value)
            .padding()
    }
}

struct LabelSmallAtom_Previews: PreviewProvider {
    static var previews: some View {
//        LabelSmallAtom(value: "60%")
        LabelSmallAtom(value: .constant("60%"))
            .environmentObject(LoggerItemsModel())
            .previewLayout(.sizeThatFits)
    }
}
