//
//  DesignTabBar.swift
//  graphics
//
//  Created by Markel Juaristi on 22/4/24.
//

import Foundation
import SwiftUI

struct TabBarStyle {
    var backgroundColor: Color
    var itemColor: Color
    var selectedItemColor: Color
    var itemFontSize: CGFloat
    var cornerRadius: CGFloat
}

extension TabBarStyle {
    static let defaultStyle = TabBarStyle(
        backgroundColor: .brown,
        itemColor: .gray,
        selectedItemColor: .blue,
        itemFontSize: 12,
        cornerRadius: 0
    )

    static let darkMode = TabBarStyle(
        backgroundColor: .black,
        itemColor: .brown,
        selectedItemColor: .red,
        itemFontSize: 14,
        cornerRadius: 0
    )

    static let colorful = TabBarStyle(
        backgroundColor: .purple,
        itemColor: .yellow,
        selectedItemColor: .green,
        itemFontSize: 16,
        cornerRadius: 10
    )
}
