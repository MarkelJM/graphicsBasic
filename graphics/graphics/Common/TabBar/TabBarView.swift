//
//  TabBarView.swift
//  graphics
//
//  Created by Markel Juaristi on 22/4/24.
//

import SwiftUI

struct TabBarView: View {
    var style: TabBarStyle = .darkMode // Cambia aquí para probar diferentes estilos

    var body: some View {
        TabView {
            RandomNumberView()
                .tabItem {
                    Label("Números", systemImage: "number")
                }
                .accentColor(style.selectedItemColor)

            GraphsView()
                .tabItem {
                    Label("Gráficos", systemImage: "chart.bar")
                }
                .accentColor(style.selectedItemColor)
        }
        .background(style.backgroundColor)
        .cornerRadius(style.cornerRadius)
        .accentColor(style.itemColor)
        .font(.system(size: style.itemFontSize))
    }
}

#Preview {
    TabBarView()
}
