//
//  RandomNumDatamanager.swift
//  graphics
//
//  Created by Markel Juaristi on 22/4/24.
//

import Foundation

class RandomNumDatamanager {
    static let shared = RandomNumDatamanager()

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

    func fetchNumbers() -> [Int] {
        return numbers
    }
}
