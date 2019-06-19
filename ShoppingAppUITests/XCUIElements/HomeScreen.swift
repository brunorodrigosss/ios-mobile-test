//
//  HomeScreen.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/16/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import Foundation
import XCTest

enum HomeScreen: String {
    case home = "HOME"
    case title = "Welcome"
    case subtitle = "Adding dimension to your ideas"
    case text = "Your complete 3D printing solutions"
    case shoppingApp = "SHOPPING APP"
    case startShopping = "Start Shopping"

    var element: XCUIElement {
        switch self {
        case .home:
            return XCUIApplication().navigationBars[self.rawValue]

        case .title, .subtitle, .text:
            return XCUIApplication().staticTexts[self.rawValue]

        case .shoppingApp, .startShopping:
            return XCUIApplication().buttons[self.rawValue]
        }
    }
}
