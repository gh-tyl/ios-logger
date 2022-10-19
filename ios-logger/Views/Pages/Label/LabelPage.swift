import SwiftUI

struct LabelPage: View {
    @StateObject var vm = LabelPageVM()

    var body: some View {
        LabelTemplate
    }

    private var LabelTemplate: some View {
        NavigationStack {
            VStack {
                TitleAtom(title: vm.title)
                LabelItemListOrganism(category: vm.categoryActivity)
                LabelItemListOrganism(category: vm.categoryLocation)
                ButtonNavigationAtom(content: LabelCreatePage(title: "title", label: "label"))
            }
        }
    }
}

struct LabelPage_Previews: PreviewProvider {
    static var previews: some View {
        LabelPage()
           .environmentObject(LabelsModel())
    }
}