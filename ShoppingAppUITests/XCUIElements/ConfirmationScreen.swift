//
//  ConfirmationScreen.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/17/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import Foundation
import XCTest

enum ConfirmationScreen: String {
    case title = "Thank you for shopping!"
    case subtitle = "Your order has been placed."
    case titleDescription = "Pickup available at:"
    case subtitleDescription = "87/93 Main North Rd"
    case description = "SA 5083"
    case checkout = "CHECKOUT"
    case keepShopping = "KEEP SHOPPING"

    var element: XCUIElement {
        switch self {
        case .title, .subtitle, .titleDescription, .subtitleDescription, .description:
            return XCUIApplication().staticTexts[self.rawValue]

        case .checkout, .keepShopping:
            return XCUIApplication().buttons[self.rawValue]
        }
    }
}
