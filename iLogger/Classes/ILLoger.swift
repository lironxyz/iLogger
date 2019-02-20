//
//  ILLoger.swift
//  iLogger
//
//  Created by Liron on 15/02/2019.
//

import Foundation

public class ILLogger {
    
    // MARK - Properties
    /// A flag indicates whether this logger enabled or not.
    /// Default is 'true'.
    var isEnabled: Bool
    
    public init() {
        isEnabled = true
    }
    
    func log(_ message: String) {
        if isEnabled {
            print(message)
        }
    }
    
    public func verbose(_ message: String) {
        log("[VERBOSE] " + message)
    }
    
    public func debug(_ message: String) {
        log("[DEBUG] " + message)
    }
    
    public func info(_ message: String) {
        log("[INFO] " + message)
    }
    
    public func warning(_ message: String) {
        log("[WARNING] " + message)
    }
    
    public func error(_ message: String) {
        log("[ERROR] " + message)
    }
    
    public func fatal(_ message: String) {
        log("[FATAL] " + message)
    }
    
}
