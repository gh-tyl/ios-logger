import SwiftUI

struct LoggerTemplate: View {
    var isActive: Bool = true

    var body: some View {
        VStack{
            ScrollView {
                LoggerListItemsOrganism()
            }
            .frame(maxHeight: .infinity, alignment: .top)
            Spacer()
            ButtonNavigationAtom(
                isActive: isActive, content: LoggerReadyPage()
            )
            Spacer()
            }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LoggerTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LoggerTemplate()
            .environmentObject(SensorItemModelData())
            .previewLayout(.sizeThatFits)
    }
}
