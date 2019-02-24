//
//  ILLogTag.swift
//  iLogger
//
//  Created by Liron on 24/02/2019.
//

import Foundation

public struct ILLogTag {
    
    let identifier: String
    
    static let verbose = ILLogTag(identifier: "Verbose")
    static let debug   = ILLogTag(identifier: "Debug")
    static let info    = ILLogTag(identifier: "Info")
    static let warning = ILLogTag(identifier: "Warning")
    static let error   = ILLogTag(identifier: "Error")
    static let fatal   = ILLogTag(identifier: "Fatal")
    
}
