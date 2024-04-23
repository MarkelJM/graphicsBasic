//
//  RandomNumDatamanager.swift
//  graphics
//
//  Created by Markel Juaristi on 22/4/24.
//

import Foundation

class RandomNumDataManager {
    static let shared = RandomNumDataManager()

    private let key = "savedNumbers"
    private var numbers: [Int] {
        get {
            UserDefaults.standard.array(forKey: key) as? [Int] ?? []
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }

    func save(number: Int) {
        var currentNumbers = numbers
        currentNumbers.append(number)
        numbers = currentNumbers
    }

    func deleteNumber(at index: Int) {
        var currentNumbers = numbers
        currentNumbers.remove(at: index)
        numbers = currentNumbers
    }

    func fetchNumbers() -> [Int] {
        return numbers
    }
}

