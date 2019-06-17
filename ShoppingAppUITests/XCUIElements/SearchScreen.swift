//
//  SearchScreen.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/16/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import Foundation
import XCTest

enum SearchScreen: String {
    case searchItem = "Search Item"

    case product1 = "D.Va Headset"
    case product2 = "Scout's Gun"

    case shoppingApp = "SHOPPING APP"
    case cancel = "Cancel"


    var element: XCUIElement {
        switch self {
        case .searchItem:
            return XCUIApplication().searchFields[self.rawValue]

        case .product1, .product2:
            return XCUIApplication().staticTexts[self.rawValue]

        case .shoppingApp, .cancel:
            return XCUIApplication().buttons[self.rawValue]
        }
    }
}

