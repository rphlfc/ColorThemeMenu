//
//  Theme.swift
//  ColorThemeMenu
//
//  Created by Raphael Cerqueira on 16/06/21.
//

import SwiftUI

protocol Theme {
    var backgroundColor: Color { get }
    var primaryColor: Color { get }
    var secondaryColor: Color { get }
    var tertiaryColor: Color { get }
    var quaternaryColor: Color { get }
    var name: String { get }
}
