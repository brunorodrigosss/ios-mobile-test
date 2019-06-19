//
//  CheckoutScreen.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/17/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import Foundation
import XCTest

enum CheckoutScreen: String {
    case cardDetailsMask = "XXXX XXXX XXXX XXXX"
    case cardExpirationDateMonth = "MM"
    case cardExpirationDateYear = "YYYY"
    case cardCvv = "CVV"
    case cart = "CART"
    case payNow = "PAY NOW"
    case pay = "Pay"

    var element: XCUIElement {
        switch self {
        case .cardDetailsMask, .cardExpirationDateMonth, .cardExpirationDateYear, .cardCvv:
            return XCUIApplication().textFields[self.rawValue]

        case .cart, .payNow, .pay:
            return XCUIApplication().buttons[self.rawValue]
        }
    }
}
