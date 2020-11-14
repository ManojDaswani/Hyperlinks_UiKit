//
//  NSAttributedStringExtension.swift
//  Hyperlinks
//
//  Created by Manoj Daswani on 3/11/20.
//

import Foundation

/* The reason why we are creating an NSAttributedString in order to make the text hyperlink and we need to have that accessible anywhere we create NSAttributed.
 We also wanted to have a static string because, we could say NSAttributedString or function name that should return correctly attributed formated string
 */

extension NSAttributedString {
    // for path - location of the text  or URL
    // in string: referring to the Text area
    // as substring: referring to what is tappable "Term" and "Policy"
    
    
    static func makeHyperlink(for path: String, in string: String, as substring: String) -> NSAttributedString{
        
        // to get the "range" of the "substring" inside of the NSString
        // we want to ensure we get NSRange back, not a regular range
        
        let nsString = NSString(string: string)
        let substringRange = nsString.range(of: substring)
        
        // we want to create the attributedString and then
        // modify it to hyperlink the substring that is in substringRange
        
        let attributedString = NSMutableAttributedString(string: string)
        attributedString.addAttribute(.link, value: path, range: substringRange)
        return attributedString
        
    }
}

