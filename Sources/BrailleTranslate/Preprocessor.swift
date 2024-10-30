//
//  Preprocessor.swift
//  BrailleTranslate
//
//  Created by Bastian Braun on 29.10.24.
//

import Foundation

class Preprocessor {
    
    static func preprocess(_ input: String) -> Array<String> {
        
        let separatedWords = splitWords(input)
        return separatedWords
    }
    
    private static func splitWords(_ input: String) -> Array<String> {
        return input.components(separatedBy: " ")
    }
}
