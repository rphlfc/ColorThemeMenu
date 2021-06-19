//
//  Themes.swift
//  ColorThemeMenu
//
//  Created by Raphael Cerqueira on 16/06/21.
//

import SwiftUI
import Dracula

struct BlueTheme: Theme {
    var backgroundColor: Color = Color("blue-background")
    var primaryColor: Color = Color("blue-primary")
    var secondaryColor: Color = Color("blue-secondary")
    var tertiaryColor: Color = Color("blue-tertiary")
    var quaternaryColor: Color = Color("blue-quaternary")
    var name: String = "Blue Theme"
}

struct BlackTheme: Theme {
    var backgroundColor: Color = Color("black-background")
    var primaryColor: Color = Color("black-primary")
    var secondaryColor: Color = Color("black-secondary")
    var tertiaryColor: Color = Color("black-tertiary")
    var quaternaryColor: Color = Color("black-quaternary")
    var name: String = "Black Theme"
}

struct WhiteTheme: Theme {
    var backgroundColor: Color = Color("white-background")
    var primaryColor: Color = Color("white-primary")
    var secondaryColor: Color = Color("white-secondary")
    var tertiaryColor: Color = Color("white-tertiary")
    var quaternaryColor: Color = Color("white-quaternary")
    var name: String = "White Theme"
}

struct DraculaTheme: Theme {
    var backgroundColor: Color = Color.draculaBackground
    var primaryColor: Color = Color.draculaPurple
    var secondaryColor: Color = Color.draculaOrange
    var tertiaryColor: Color = Color.draculaCurrent
    var quaternaryColor: Color = Color.draculaCurrent
    var name: String = "Dracula Theme"
}
