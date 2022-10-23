import SwiftUI

struct DataMainPage: View {
    @Binding var state: DataContentState
    @StateObject var vm = DataMainVM()

    var body: some View {
        DataMainTemplate
            .toolbar(.hidden)
            .sheet(isPresented: $vm.sheetIsPresented) {
                UIActivityView(fileurls: $vm.selectedFile)
            }
            .onAppear(perform: {
                self.vm.filepathlist = File.documentDirectory.filePaths
                self.vm.filenamelist = File.documentDirectory.fileNames
            })
    }

    private var DataMainTemplate: some View {
        VStack {
            DataListOrganism
                .frame(maxHeight: .infinity)
            ButtonSwitchDataAtom(state: $state, moveToName: vm.moveToName, moveTo: vm.moveTo)
        }
    }

    private var DataListOrganism: some View {
        NavigationSplitView {
            List(selection: $vm.selectedFile) {
                    ForEach(GetLogs(filepaths: vm.filepathlist, filenames: vm.filenamelist), id: \.self) { item in DataListMolecule(fileName: item.filenames, filePath: item.filepaths)
                    }
                    .onDelete(perform: vm.deleteRow)
                }
                .navigationTitle(vm.title)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack {
                            Button(action: {
                                vm.sheetIsPresented = true
                            }) {
                                Image(systemName: "square.and.arrow.up")
                            }
                            EditButton()
                        }
                    }
                }
        } detail: {
            Text(vm.content)
        }
    }
}

struct DataMainPage_Previews: PreviewProvider {
    static var previews: some View {
        DataMainPage(state: .constant(.main))
    }
}
