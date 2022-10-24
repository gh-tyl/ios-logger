import Foundation

class LogsWriter {
    var file: FileHandle? = nil
    var header: Array<String> = []

    init(logElements: Array<String>) {
        // Set header
        for logElement in logElements {
            header.append(logElement)
        }
        header.append("\n")
    }

    func open(_ filePath: URL) {
        do {
            FileManager.default.createFile(atPath: filePath.path, contents: nil, attributes: nil)
            let file: FileHandle = try FileHandle(forWritingTo: filePath)
            let headerString: String = header.joined(separator: ",")
            file.write(headerString.data(using: .utf8)!)
            self.file = file
        } catch let error {
            print("Error: \(error)")
        }
    }

    func write(_ logs: Dictionary<String, String>) {
        guard let file = self.file else { return }
        var text = ""
        for logElement in header {
            if let value = logs[logElement] {
                text += value
                text += ","
            }
        }
        text += "\n"
        print("text: \(text)")
        file.write(text.data(using: .utf8)!)
    }

    func close() {
        guard let file = self.file else { return }
        file.closeFile()
        self.file = nil
    }
}

struct FileList: Hashable {
    var filepaths: String
    var filenames: String
}

func GetLogs(filepaths: [String], filenames: [String]) -> [FileList] {
    var filelist = [FileList(filepaths: "", filenames: "")]
    for (filepath, filename) in zip(filepaths, filenames) {
        filelist.append(FileList(filepaths: "\(filepath)", filenames: "\(filename)"))
    }
    filelist.removeFirst()
    return filelist
}
