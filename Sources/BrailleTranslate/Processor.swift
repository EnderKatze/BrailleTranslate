//
//  Processor.swift
//  BrailleTranslate
//
//  Created by Bastian Braun on 30.10.24.
//

class Processor {
    
    var wordList: [String]
        
        public init(wordList: [String]) {
            
            self.wordList = wordList
        }
    
    func process() -> String {
        var output: [String] = processNumbers(self.wordList)
        
        
        return output.joined(separator: " ")
    }
    
    private func processNumbers(_ input: [String]) -> [String] {
        
        var newText: [String] = []
        
        for word: String in input {
            
            var newWord: [Character] = []
            
            for char in Array(word) {
                if(char.isNumber) {
                    if let numberIndicator = BrailleSymbols.contractions["numberIndicator"] {
                        newWord.append(contentsOf: numberIndicator)
                    }
                    if let brailleNumber = BrailleSymbols.numbers[char] {
                        newWord.append(contentsOf: brailleNumber)
                    }
                } else {
                    newWord.append(char)
                }
            
            }
            newText.append(String(newWord))
        }
        return newText;
    }
}
