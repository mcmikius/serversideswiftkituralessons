import Kitura

let router = Router()
Kitura.addHTTPServer(onPort: 8080, with: router)
Kitura.run()
