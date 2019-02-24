//
//  ILLogger.swift
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
    
    func log(_ message: String, tag: ILLogTag) {
        if isEnabled {
            print("[\(tag.identifier)] \(message)")
        }
    }
    
    public func verbose(_ message: String) {
        log(message, tag: .verbose)
    }
    
    public func debug(_ message: String) {
        log(message, tag: .debug)
    }
    
    public func info(_ message: String) {
        log(message, tag: .info)
    }
    
    public func warning(_ message: String) {
        log(message, tag: .warning)
    }
    
    public func error(_ message: String) {
        log(message, tag: .error)
    }
    
    public func fatal(_ message: String) {
        log(message, tag: .fatal)
    }
    
}
