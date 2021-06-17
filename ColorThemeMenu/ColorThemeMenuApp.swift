//
//  ColorThemeMenuApp.swift
//  ColorThemeMenu
//
//  Created by Raphael Cerqueira on 14/06/21.
//

import SwiftUI

@main
struct ColorThemeMenuApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DataSource())
        }
    }
}
