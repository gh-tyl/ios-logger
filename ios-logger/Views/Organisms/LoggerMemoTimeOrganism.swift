import SwiftUI

struct LoggerMemoTimeOrganism: View {
    var body: some View {
        VStack{
            LabelTimeAtom()
            LoggerMemoButtonsMolecule()
        }
    }
}

struct LoggerMemoTimeOrganism_Previews: PreviewProvider {
    static var previews: some View {
        LoggerMemoTimeOrganism()
            .previewLayout(.sizeThatFits)
    }
}
