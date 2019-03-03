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
    public var isEnabled: Bool
    /// A Set of tags that will be logged.
    /// Defaults are [.verbose, .debug, .info, .warning, .error, .fatal].
    public var enabledTags: Set<ILLogTag>
    
    public init() {
        isEnabled = true
        enabledTags = Set<ILLogTag>([.verbose, .debug, .info, .warning, .error, .fatal])
    }
    
    func log(_ message: String, tag: ILLogTag) {
        if isEnabled {
            if enabledTags.contains(tag) {
                print("[\(tag.identifier)] \(message)")
            }
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
