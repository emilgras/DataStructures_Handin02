//
//  ViewController.swift
//  DataStructures_Handin02
//
//  Created by Emil Gräs on 09/03/2017.
//  Copyright © 2017 Emil Gräs. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    private let manager = SortingManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(manager.testInsertionSort(length: 1000, nTimes: 10))")
        print("\(manager.testInsertionSort(length: 2000, nTimes: 10))")
        print("\(manager.testInsertionSort(length: 4000, nTimes: 10))")
        print("\(manager.testInsertionSort(length: 8000, nTimes: 10))")
        print("\(manager.testInsertionSort(length: 16000, nTimes: 10))")
        print("\(manager.testInsertionSort(length: 32000, nTimes: 10))")
        print("\n")
        
        print("\(manager.testSelectionSort(length: 1000, nTimes: 10))")
        print("\(manager.testSelectionSort(length: 2000, nTimes: 10))")
        print("\(manager.testSelectionSort(length: 4000, nTimes: 10))")
        print("\(manager.testSelectionSort(length: 8000, nTimes: 10))")
        print("\(manager.testSelectionSort(length: 16000, nTimes: 10))")
        print("\(manager.testSelectionSort(length: 32000, nTimes: 10))")
        print("\n")
        
        print("\(manager.testShellSort(length: 1000, nTimes: 10))")
        print("\(manager.testShellSort(length: 2000, nTimes: 10))")
        print("\(manager.testShellSort(length: 4000, nTimes: 10))")
        print("\(manager.testShellSort(length: 8000, nTimes: 10))")
        print("\(manager.testShellSort(length: 16000, nTimes: 10))")
        print("\(manager.testShellSort(length: 32000, nTimes: 10))")
    }

}

