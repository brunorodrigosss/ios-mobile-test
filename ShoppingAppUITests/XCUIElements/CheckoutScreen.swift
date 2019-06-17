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

//StaticText, {{152.3, 68.0}, {109.7, 27.3}}, label: 'Card Details'
//StaticText, {{152.3, 245.3}, {110.7, 27.3}}, label: 'Pickup Point'
//StaticText, {{147.3, 423.7}, {119.7, 27.3}}, label: 'Order Details'
//StaticText, {{20.3, 116.3}, {91.7, 20.7}}, label: 'Card Number'
//StaticText, {{34.3, 154.0}, {77.7, 20.7}}, label: 'Expiry Date'
//StaticText, {{83.0, 191.7}, {29.0, 20.7}}, label: 'CVV'
//StaticText, {{16.0, 607.3}, {111.7, 69.7}}, label: 'Total'
//StaticText, {{242.3, 614.0}, {155.7, 63.0}}, label: '$158.00'
//StaticText, {{20.0, 470.0}, {91.7, 23.3}}, label: 'Scout's Gun'
//StaticText, {{314.7, 470.0}, {79.3, 23.3}}, label: '1 x $98.00'
//StaticText, {{20.0, 514.0}, {103.7, 23.3}}, label: 'D.Va Headset'
//StaticText, {{314.7, 514.0}, {79.3, 23.3}}, label: '1 x $60.00'
