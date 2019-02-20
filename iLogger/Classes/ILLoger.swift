//
//  ILLoger.swift
//  iLogger
//
//  Created by Liron on 15/02/2019.
//

import Foundation

public class ILLogger {
    
    public init() {}
    
    func log(_ message: String) {
        print(message)
    }
    
    public func debug(_ message: String) {
        log("[DEBUG] " + message)
    }
    
    public func info(_ message: String) {
        log("[INFO] " + message)
    }
    
    public func error(_ message: String) {
        log("[ERROR] " + message)
    }
    
    public func fatal(_ message: String) {
        log("[FATAL] " + message)
    }
    
}
