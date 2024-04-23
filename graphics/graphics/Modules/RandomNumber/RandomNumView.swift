//
//  RandomNumView.swift
//  graphics
//
//  Created by Markel Juaristi on 22/4/24.
//

import SwiftUI

struct RandomNumberView: View {
    @ObservedObject var viewModel = RandomNumViewModel()

    var body: some View {
        NavigationView {
            VStack {
                if let number = viewModel.currentNumber {
                    Text("Número actual: \(number)")
                }
                Button("Generar número") {
                    viewModel.generateRandomNumber()
                }
                List {
                    ForEach(viewModel.allNumbers, id: \.self) { number in
                        Text("\(number)")
                    }
                    .onDelete(perform: viewModel.deleteNumbers)
                }
            }
            .navigationTitle("Generador de Números")
            .padding()
            .toolbar {
                EditButton()
            }
        }
    }
}



#Preview {
    RandomNumberView()
}
