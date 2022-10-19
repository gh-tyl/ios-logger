 import Foundation
 import CoreMotion

 class LoggerManager: ObservableObject {
     // Set the loggers
     var sbmanager = ScreenBrightnessManager()
     var ammanager = AltimeterManager()
     let relaltitude = CMAltimeter.isRelativeAltitudeAvailable()
     // Set the logswriter
     var logswriter: LogsWriter

     init() {
         self.logswriter = LogsWriter(logElements: [])
     }

     func initFunctions(loggerItems: inout Array<LoggerItemModel>) {
         // Set the logElements for the logswriter
         var logElements: Array<String> = []
         for loggerItem in loggerItems {
             if loggerItem.isRecord {
                 logElements.append(loggerItem.configName)
             }
         }
         print("logElements: \(logElements)")
         // Set the logswriter
         self.logswriter = LogsWriter(logElements: logElements)
         let filepath: URL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("\(GetCurrentDatetimeFilename())_Logs.csv")
         print("filepath: \(filepath)")
         self.logswriter.open(filepath)
         // Init the loggers
         var logs: Dictionary<String, String> = [:]
         for var loggerItem in loggerItems {
             initFunction(loggerItem: &loggerItem, logs: &logs)
         }
         self.logswriter.write(logs)

         func initFunction(loggerItem: inout LoggerItemModel, logs: inout Dictionary<String, String>) {
             if loggerItem.isRecord && loggerItem.configId == loggerConfig["Datetime"] {
                 sbmanager.startScreenBrightness()
                 loggerItem.value = GetCurrentDatetime()
             }

             if loggerItem.isRecord && loggerItem.configId == loggerConfig["ScreenBrightness"] {
                 sbmanager.startScreenBrightness()
                 loggerItem.value = sbmanager.brightnessString
             }

             if loggerItem.isRecord && loggerItem.configId == loggerConfig["AtmosphericPressure"] {
                 ammanager.startAtomosphericPressureUpdate()
                 loggerItem.value = relaltitude ? ammanager.pressureString: "0.0"
             }
             print("loggerItem.itemNameEN: \(loggerItem.value)")
             logs[loggerItem.configName] = loggerItem.value
         }
     }

     func callFunctions(loggerItems: inout Array<LoggerItemModel>) {
         print("callFunctions")
         // Update the loggers
         var logs: Dictionary<String, String> = [:]
         for var loggerItem in loggerItems {
             updateValue(loggerItem: &loggerItem, logs: &logs)
         }
         self.logswriter.write(logs)
         print("callFunctions end")

         func updateValue(loggerItem: inout LoggerItemModel, logs: inout Dictionary<String, String>) {
             if loggerItem.isRecord && loggerItem.configId == loggerConfig["Datetime"] {
                 loggerItem.value = GetCurrentDatetime()
             } else if loggerItem.isRecord && loggerItem.configId == loggerConfig["ScreenBrightness"] {
                 sbmanager.startScreenBrightness()
                 loggerItem.value = sbmanager.brightnessString
             } else if loggerItem.isRecord && loggerItem.configId == loggerConfig["AtmosphericPressure"] {
                 loggerItem.value = relaltitude ? ammanager.pressureString: "---"
             }
             if loggerItem.isRecord {
                 print("\(loggerItem.itemNameEN): \(loggerItem.value)")
                 logs[loggerItem.configName] = loggerItem.value
             }
         }
     }

     func stopFunctions(loggerItems: inout Array<LoggerItemModel>) {
         print("stopFunctions")
         for var loggerItem in loggerItems {
             stopFunction(loggerItem: &loggerItem)
         }
         self.logswriter.close()
         print("stopFunctions: end")

         func stopFunction(loggerItem: inout LoggerItemModel) {
             if loggerItem.isRecord && loggerItem.configId == loggerConfig["ScreenBrightness"] {
                 sbmanager.stopScreenBrightness()
                 // sbmanager = ScreenBrightnessManager()
             }

             if loggerItem.isRecord && loggerItem.configId == loggerConfig["AtmosphericPressure"] {
                 ammanager.stopAtomosphericPressureUpdate()
                 // ammanager = AltimeterManager()
             }
         }
     }
 }

//  import Foundation
//  import CoreMotion

//  class LoggerManager: ObservableObject {
//      // Set the loggers
//      var sbmanager = ScreenBrightnessManager()
//      var ammanager = AltimeterManager()
//      let relaltitude = CMAltimeter.isRelativeAltitudeAvailable()
//      // Set the logswriter
//      var logswriter: LogsWriter

//      init() {
//          self.logswriter = LogsWriter(logElements: [])
//      }

//      func initFunctions(loggerItems: inout Array<LoggerItemModel>) {
//          // Set the logElements for the logswriter
//          var logElements: Array<String> = []
//          for loggerItem in loggerItems {
//              if loggerItem.isRecord {
//                  logElements.append(loggerItem.configName)
//              }
//          }
//          print("logElements: \(logElements)")
//          // Set the logswriter
//          self.logswriter = LogsWriter(logElements: logElements)
//          let filepath: URL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("\(GetCurrentDatetimeFilename())_Logs.csv")
//          print("filepath: \(filepath)")
//          self.logswriter.open(filepath)
//          // Init the loggers
//          var logs: Dictionary<String, String> = [:]
//          for var loggerItem in loggerItems {
//              initFunction(loggerItem: &loggerItem, logs: &logs)
//          }
//          self.logswriter.write(logs)

//          func initFunction(loggerItem: inout LoggerItemModel, logs: inout Dictionary<String, String>) {
//              if loggerItem.isRecord && loggerItem.configId == loggerConfig["Datetime"] {
//                  sbmanager.startScreenBrightness()
//                  loggerItem.value = GetCurrentDatetime()
//              }

//              if loggerItem.isRecord && loggerItem.configId == loggerConfig["ScreenBrightness"] {
//                  sbmanager.startScreenBrightness()
//                  loggerItem.value = sbmanager.brightnessString
//              }

//              if loggerItem.isRecord && loggerItem.configId == loggerConfig["AtmosphericPressure"] {
//                  ammanager.startAtomosphericPressureUpdate()
//                  loggerItem.value = relaltitude ? ammanager.pressureString: "0.0"
//              }
//              print("loggerItem.itemNameEN: \(loggerItem.value)")
//              logs[loggerItem.configName] = loggerItem.value
//          }
//      }

//      func callFunctions(loggerItems: inout Array<LoggerItemModel>) {
//          print("callFunctions")
//          // Update the loggers
//          var logs: Dictionary<String, String> = [:]
//          for var loggerItem in loggerItems {
//              updateValue(loggerItem: &loggerItem, logs: &logs)
//          }
//          self.logswriter.write(logs)
//          print("callFunctions end")

//          func updateValue(loggerItem: inout LoggerItemModel, logs: inout Dictionary<String, String>) {
//              if loggerItem.isRecord && loggerItem.configId == loggerConfig["Datetime"] {
//                  loggerItem.value = GetCurrentDatetime()
//              } else if loggerItem.isRecord && loggerItem.configId == loggerConfig["ScreenBrightness"] {
//                  sbmanager.startScreenBrightness()
//                  loggerItem.value = sbmanager.brightnessString
//              } else if loggerItem.isRecord && loggerItem.configId == loggerConfig["AtmosphericPressure"] {
//                  loggerItem.value = relaltitude ? ammanager.pressureString: "---"
//              }
//              if loggerItem.isRecord {
//                  print("\(loggerItem.itemNameEN): \(loggerItem.value)")
//                  logs[loggerItem.configName] = loggerItem.value
//              }
//          }
//      }

//      func stopFunctions(loggerItems: inout Array<LoggerItemModel>) {
//          print("stopFunctions")
//          for var loggerItem in loggerItems {
//              stopFunction(loggerItem: &loggerItem)
//          }
//          self.logswriter.close()
//          print("stopFunctions: end")

//          func stopFunction(loggerItem: inout LoggerItemModel) {
//              if loggerItem.isRecord && loggerItem.configId == loggerConfig["ScreenBrightness"] {
//                  sbmanager.stopScreenBrightness()
//                  // sbmanager = ScreenBrightnessManager()
//              }

//              if loggerItem.isRecord && loggerItem.configId == loggerConfig["AtmosphericPressure"] {
//                  ammanager.stopAtomosphericPressureUpdate()
//                  // ammanager = AltimeterManager()
//              }
//          }
//      }
//  }
