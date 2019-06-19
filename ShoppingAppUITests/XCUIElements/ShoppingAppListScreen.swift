//
//  ShoppingAppListScreen.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/16/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import Foundation
import XCTest

enum ShoppingAppListScreen: String {
    case shoppingApp = "SHOPPING APP"
    case home = "Home"
    case list = "List"
    case search = "Search"
    case cart = "Cart"
    case finder = "Finder"
    case checkout = "Checkout"

    var element: XCUIElement {
        switch self {
        case .shoppingApp:
            return XCUIApplication().navigationBars[self.rawValue]

        case .home, .list, .search, .cart, .finder, .checkout:
            return XCUIApplication().staticTexts[self.rawValue]
        }
    }
}
