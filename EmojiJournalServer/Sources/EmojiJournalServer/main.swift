import Foundation
import Kitura
import LoggerAPI
import HeliumLogger

do {
    HeliumLogger.use(LoggerMessageType.info)
    let app = App()
    try app.run()
} catch let error {
    Log.error(error.localizedDescription)
}

