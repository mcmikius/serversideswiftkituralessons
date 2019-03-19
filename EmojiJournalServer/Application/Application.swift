//
//  Application.swift
//  CHTTPParser
//
//  Created by Michail Bondarenko on 3/19/19.
//
import Foundation
import Kitura
import LoggerAPI
import Configuration
import CloudEnvironment
import Health

public let projectPath = ConfigurationManager.BasePath.project.path
public let health = Health()

public class App {
    
    let router = Router()
    let cloudEnv = CloudEnv()
    
    func postInit() throws {
        initializeMetrics(app: self)
        initializeHealthRoutes(app: self)
    }
    
    public func run() throws {
        try postInit()
        Kitura.addHTTPServer(onPort: cloudEnv, with: router)
        Kitura.run()
    }
    
}

