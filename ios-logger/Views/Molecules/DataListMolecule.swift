import SwiftUI

struct DataListMolecule: View {
    @State private var sheetIsPresented = false
    @State var filepathlist = File.documentDirectory.filePaths
    @State var filenamelist = File.documentDirectory.fileNames
    @State var content: String = ""

    @State var selectedFile: Set<FileList> = []

    var body: some View {
        VStack {
            NavigationView {
                List(selection: $selectedFile) {
                    ForEach(GetLogs(filepaths: filepathlist, filenames: filenamelist), id: \.self) { item in
                        NavigationLink {
                            Text(content)
                        .onAppear( perform: {
                            self.content = File(path: item.filepaths).contents ?? ""
                        })
                        } label: {
                            ItemAtom(itemName: item.filenames)
                        }
                    }
                    .onDelete(perform: self.deleteRow)
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack {
                            Button(action: {
                                self.sheetIsPresented = true
                            }) {
                                Image(systemName: "square.and.arrow.up")
                            }
                            EditButton()
                        }
                    }
                }
            }
            .onAppear(perform: {
                self.filepathlist = File.documentDirectory.filePaths
                self.filenamelist = File.documentDirectory.fileNames
            })
        }
        .sheet(isPresented: $sheetIsPresented) {
            UIActivityView(fileurls: $selectedFile)
        }
    }

    func deleteRow(at offsets: IndexSet) {
        withAnimation {
            self.filenamelist.remove(atOffsets: offsets)
            let delfile = File(path: self.filepathlist[offsets.first!])
            try? delfile.delete()
            self.filepathlist = File.documentDirectory.filePaths
            self.filenamelist = File.documentDirectory.fileNames
        }
    }
}

struct DataListMolecule_Previews: PreviewProvider {
    static var previews: some View {
        DataListMolecule()
            .previewLayout(.sizeThatFits)
    }
}
