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
    @Published var allNumbers: [Int] = [] // Lista de todos los números generados

    private var cancellables = Set<AnyCancellable>()

    init() {
        loadNumbers() // Cargar números al inicializar
    }

    func generateRandomNumber() {
        let number = Int.random(in: 0...100)
        currentNumber = number
        RandomNumDataManager.shared.save(number: number)
        loadNumbers() // Recargar números después de guardar uno nuevo
    }
    
    func loadNumbers() {
        allNumbers = RandomNumDataManager.shared.fetchNumbers()
    }
}
