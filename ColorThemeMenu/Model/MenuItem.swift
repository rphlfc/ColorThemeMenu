//
//  MenuItem.swift
//  ColorThemeMenu
//
//  Created by Raphael Cerqueira on 14/06/21.
//

import Foundation

struct MenuItem: Identifiable {
    let id = UUID().uuidString
    var image: String
    var title: String
    var badge: Int?
}

let items = [
    MenuItem(image: "chart.pie.fill", title: "Dashboard"),
    MenuItem(image: "chart.bar.xaxis", title: "Overview"),
    MenuItem(image: "ellipsis.bubble.fill", title: "Chat", badge: 5),
    MenuItem(image: "person.fill", title: "Team"),
    MenuItem(image: "chart.bar.doc.horizontal.fill", title: "Tasks"),
    MenuItem(image: "exclamationmark.triangle.fill", title: "Reports"),
    MenuItem(image: "gearshape.fill", title: "Settings")
]
