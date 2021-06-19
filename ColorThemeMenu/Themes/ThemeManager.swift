//
//  ThemeManager.swift
//  ColorThemeMenu
//
//  Created by Raphael Cerqueira on 16/06/21.
//

import Foundation

enum ThemeManager {
    static let themes: [Theme] = [BlueTheme(), BlackTheme(), WhiteTheme(), DraculaTheme()]
    
    static func getTheme(_ theme: Int) -> Theme {
        Self.themes[theme]
    }
}
