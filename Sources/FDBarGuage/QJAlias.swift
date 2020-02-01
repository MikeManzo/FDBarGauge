//
//  QJAlias.swift
//  
//
//  Created by Mike Manzo on 1/27/20.
//


#if os(iOS) || os(watchOS)
    import UIKit

    public typealias QJViewController = UIViewController
    public typealias QJColor = UIColor
    public typealias QJFont = UIFont
    public typealias QJView = UIView
    
#elseif os(macOS)
    import Cocoa

    public typealias QJViewController = NSViewController
    public typealias QJColor = NSColor
    public typealias QJFont = NSFont
    public typealias QJView = NSView
#endif
