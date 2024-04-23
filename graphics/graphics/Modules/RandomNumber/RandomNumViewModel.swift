//
//  RandomNumViewModel.swift
//  graphics
//
//  Created by Markel Juaristi on 22/4/24.
//

import Foundation
import Combine

class RandomNumViewModel: ObservableObject {
    @Published var currentNumber: Int?
    @Published var allNumbers: [Int] = []

    init() {
        loadNumbers()
    }

    func generateRandomNumber() {
        let number = Int.random(in: 0...100)
        currentNumber = number
        RandomNumDataManager.shared.save(number: number)
        loadNumbers()
    }
    
    func loadNumbers() {
        allNumbers = RandomNumDataManager.shared.fetchNumbers()
    }

    func deleteNumbers(at offsets: IndexSet) {
        offsets.forEach { index in
            RandomNumDataManager.shared.deleteNumber(at: index)
        }
        loadNumbers()
    }
}
