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
    case allow = "Allow"
    case home = "Home"
    case list = "List"
    case search = "Search"
    case cart = "Cart"
    case finder = "Finder"
    case checkout = "Checkout"

    var element: XCUIElement {
        switch self {
        case .allow, .home, .list, .search, .cart, .finder, .checkout:
            return XCUIApplication().staticTexts[self.rawValue]
        }
    }
}
