//
//  TabBarView.swift
//  graphics
//
//  Created by Markel Juaristi on 22/4/24.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            RandomNumberView()
                .tabItem {
                    Label("Números", systemImage: "number")
                }

            GraphsView()
                .tabItem {
                    Label("Gráficos", systemImage: "chart.bar")
                }
        }
        .background(Color.red)
    }
}

#Preview {
    TabBarView()
}
