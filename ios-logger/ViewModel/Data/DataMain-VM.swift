import Foundation
import SwiftUI

extension DataMainPage {
    @MainActor class DataMainVM: ObservableObject {
        @Published var title: String = "Data"
        @Published var moveToName: String = "Meta"
        @Published var moveTo: DataContentState = .meta
        @Published var sheetIsPresented: Bool = false
        @Published var filepathlist = File.documentDirectory.filePaths
        @Published var filenamelist = File.documentDirectory.fileNames
        @Published var content: String = ""
        @Published var selectedFile: Set<FileList> = []

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
}
