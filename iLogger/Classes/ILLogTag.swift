//
//  ILLogTag.swift
//  iLogger
//
//  Created by Liron on 24/02/2019.
//

import Foundation

public struct ILLogTag {
    
    let identifier: String
    
    public static let verbose = ILLogTag(identifier: "Verbose")
    public static let debug   = ILLogTag(identifier: "Debug")
    public static let info    = ILLogTag(identifier: "Info")
    public static let warning = ILLogTag(identifier: "Warning")
    public static let error   = ILLogTag(identifier: "Error")
    public static let fatal   = ILLogTag(identifier: "Fatal")
    
}

extension ILLogTag: Hashable { }
