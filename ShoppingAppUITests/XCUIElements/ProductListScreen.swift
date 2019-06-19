//
//  ProductListScreen.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/16/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import Foundation
import XCTest

enum ProductListScreen: String {
    case list = "LIST"
    case product1 = "D.Va Headset"
    case product2 = "Scout's Gun"
    case home = "HOME"

    var element: XCUIElement {
        switch self {
        case .list:
            return XCUIApplication().navigationBars[self.rawValue]
        case .product1, .product2:
            return XCUIApplication().staticTexts[self.rawValue]

        case .home:
            return XCUIApplication().buttons[self.rawValue]
        }
    }
}
