import SwiftUI

struct DataListMolecule: View {
    @State var fileName: String
    @State var filePath: String
    @State var content: String = ""

    var body: some View {
        NavigationLink {
            Text(content)
                .onAppear(perform: {
                    self.content = File(path: filePath).contents ?? ""
                })
        } label: {
            ItemAtom(itemName: fileName)
        }
    }
}

struct DataListMolecule_Previews: PreviewProvider {
    static var previews: some View {
        DataListMolecule(fileName: "fileName", filePath: "filePath")
            .previewLayout(.sizeThatFits)
    }
}
