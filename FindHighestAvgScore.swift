//
//  FindHighestAvgScore.swift
//  IOS practice
//
//  Created by Yunao Guo on 7/23/23.
//

import Foundation

/*
 Given a list of tuples containing the name of the player and their respective score, find the student with the highest average. Return a tuple with the name of the player and their average score. A player can appear multiple times within the list.
*/

func bestAvgScore(_ playerScores: [(String, Int)]) -> (String, Int) {
    var dict = [String: [Int]]()
    for (name, score) in playerScores {
        if dict[name] == nil {
            dict[name] = [score]
        } else {
            dict[name]?.append(score)
        }
    }
    var maxAvg = 0
    var maxName = ""
    for (name, scores) in dict {
        let avg = scores.reduce(0, +) / scores.count
        if avg > maxAvg {
            maxAvg = avg
            maxName = name
        }
    }
    return (maxName, maxAvg)
}

