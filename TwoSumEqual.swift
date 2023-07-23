//
//  TwoSumEqual.swift
//  IOS practice
//
//  Created by Yunao Guo on 7/17/23.
//

import Foundation

cclass Solution {
    func isSumEqual(_ firstWord: String, _ secondWord: String, _ targetWord: String) -> Bool {
        
        let letters = "abcdefghij"
        var firstNum = firstWord, secondNum = secondWord, targetNum = targetWord

        for (index, value) in letters.enumerated() {
            firstNum = firstNum.replacingOccurrences(of: String(value), with: String(index))
            secondNum = secondNum.replacingOccurrences(of: String(value), with: String(index))
            targetNum = targetNum.replacingOccurrences(of: String(value), with: String(index))
        }
        
        return (Int(firstNum)! + Int(secondNum)!) == Int(targetNum)!
    }
}
