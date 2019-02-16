//
//  ILLoger.swift
//  iLogger
//
//  Created by Liron on 15/02/2019.
//

import Foundation

public class ILLogger {
    
    public init() {}
    
    public func debug(_ message: String) {
        print("[DEBUG] " + message)
    }
    
    public func info(_ message: String) {
        print("[INFO] " + message)
    }
    
    public func error(_ message: String) {
        print("[ERROR] " + message)
    }
    
    public func fatal(_ message: String) {
        print("[FATAL] " + message)
    }
    
}
