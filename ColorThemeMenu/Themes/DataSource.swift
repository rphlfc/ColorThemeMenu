//
//  DataSource.swift
//  ColorThemeMenu
//
//  Created by Raphael Cerqueira on 16/06/21.
//

import SwiftUI

class DataSource: ObservableObject {
    @Published var selectedTheme: Theme = BlackTheme()
    @AppStorage("currentTheme") var currentTheme = 1 {
        didSet {
            updateTheme()
        }
    }
    
    init() {
        updateTheme()
    }
    
    func updateTheme() {
        selectedTheme = ThemeManager.getTheme(currentTheme)
    }
}
