import Cocoa



var fileManager = FileManager.default

var filePath = "/Users/Shared/Mytext.rtf"

if fileManager.isReadableFile(atPath: filePath)
{
    print("File Mytext is readable")
}
else
{
    print("File is not readable")
}

// to create a folder,file & and check permission if the file is readable,deletable,etc...

// create folder

var folderName = "/Users/Shared/Myfolder"
do
{
    try fileManager.createDirectory(atPath: folderName, withIntermediateDirectories: true, attributes: nil)
    
    // create file
    
    filePath = "/Users/Shared/Myfolder/text1.txt"
    
    let fileText = "hello\nWorld\nGood\nbye"
    
    let fileData = fileText.data(using: .utf8)
    
    fileManager.createFile(atPath: filePath, contents: fileData, attributes: nil)
    
    //permission check
    
    fileManager.isReadableFile(atPath: filePath) ? print("File text1 is readable") : print("File is not readable")
    fileManager.isDeletableFile(atPath: filePath) ? print("File text1 is deletable") : print("File is not deletable")
    fileManager.isExecutableFile(atPath: filePath) ? print("File text1 is executable") : print("File is not executable")
    
    // Read file in  Myfolder/text1.txt
    
    print(try String(contentsOfFile: filePath, encoding: .utf8))
    
    // write file content in Myfolder/text1.txt (this will replace the content that was currently in the file) i.e. hello\nWorld\nGood\nbye
    
    let newText = "Good Morning 🌞"
    try newText.write(toFile: filePath, atomically: true, encoding: .utf8)
    
    print(try String(contentsOfFile: filePath, encoding: .utf8))
    
    // file handle
    /*
     let fileHandler = FileHandle(forWritingAtPath: filePath)
     fileHandler?.truncateFile(atOffset: 4)
     
     print(try String(contentsOfFile: filePath, encoding: .utf8))
     */
    
    let nightMode = "Night   "
    if let fileUpdater = FileHandle(forUpdatingAtPath: filePath) {
        fileUpdater.seek(toFileOffset: 5)
        fileUpdater.write(nightMode.data(using: .utf8)!)
        fileUpdater.closeFile()
    }
    print(try String(contentsOfFile: filePath, encoding: .utf8))
    
    let emoMode = "🌚"
    if let fileUpdater = FileHandle(forUpdatingAtPath: filePath) {
        fileUpdater.seek(toFileOffset: 13)
        fileUpdater.write(emoMode.data(using: .utf8)!)
        fileUpdater.closeFile()
    }
    print(try String(contentsOfFile: filePath, encoding: .utf8))
    
    let monkeyLine = "\nAdding a 🐵 to the end of the file via FileHandle"
    if let fileUpdater = FileHandle(forUpdatingAtPath: filePath) {
        fileUpdater.seekToEndOfFile()
        fileUpdater.write(monkeyLine.data(using: .utf8)!)
        fileUpdater.closeFile()
    }
    print(try String(contentsOfFile: filePath, encoding: .utf8))
    /*
     // file delete
     try fileManager.removeItem(atPath: filePath)
     */
    
    
}
catch let error
{
    print("error is file operation:\n\(error.localizedDescription)")
}



