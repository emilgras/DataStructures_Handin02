//
//  SortingManager.swift
//  DataStructures_Handin02
//
//  Created by Emil Gräs on 09/03/2017.
//  Copyright © 2017 Emil Gräs. All rights reserved.
//

import Foundation

class SortingManager {
    
    // properties
    fileprivate let insertionSort = InsertionSort()
    fileprivate let selectionSort = SelectionSort()
    fileprivate let shellSort = ShellSort()
    
    // test methods
    func testInsertionSort(length: Int, nTimes: Int) -> Double {
        var sum: Double = 0.0
        for _ in 0..<nTimes {
            let randomNumbers = generateRandomNumbers(length: length)
            let before = Date.timeIntervalSinceReferenceDate
            insertionSort.sort(randomNumbers)
            let after = Date.timeIntervalSinceReferenceDate
            sum += (after - before)
        }
        return sum / Double(nTimes)     // seconds
    }
    
    func testSelectionSort(length: Int, nTimes: Int) -> Double {
        var sum: Double = 0.0
        for _ in 0..<nTimes {
            let randomNumbers = generateRandomNumbers(length: length)
            let before = Date.timeIntervalSinceReferenceDate
            selectionSort.sort(randomNumbers)
            let after = Date.timeIntervalSinceReferenceDate
            sum += (after - before)     // seconds
        }
        
        return sum / Double(nTimes)
    }
    
    func testShellSort(length: Int, nTimes: Int) -> Double {
        var sum: Double = 0.0
        for _ in 0..<nTimes {
            var randomNumbers = generateRandomNumbers(length: length)
            let before = Date.timeIntervalSinceReferenceDate
            shellSort.sort(&randomNumbers)
            let after = Date.timeIntervalSinceReferenceDate
            sum += (after - before)
        }
        return (sum / Double(nTimes)) * 1000    // milli seconds
    }
    
    // helper methods
    fileprivate func generateRandomNumbers(length: Int) -> [Int] {
        var array: [Int] = []
        for _ in 0..<length {
            let random = arc4random_uniform(1000)
            array.append(Int(random))
        }
        return array
    }
}
