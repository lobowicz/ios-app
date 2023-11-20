//
//  NSAttributedStringExtension.swift
//  IOS101-Prework
//
//  Created by Joseph Lobowicz on 11/18/23.
//

import Foundation

extension NSAttributedString {
    
    static func makeHyperlink(for path : String, in string : String, as substring : String) -> NSAttributedString {
        let nsString = NSString(string : string)
        let substringRange = nsString.range(of: substring)
        let attributedString = NSMutableAttributedString(string: string)
        attributedString.addAttribute(.link, value: path, range: substringRange)
        return attributedString
    }
    
}
