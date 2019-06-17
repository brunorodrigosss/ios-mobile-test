//
//  ProductDetailsScreen.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/16/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import Foundation
import XCTest

enum ProductDetailsScreen: String {
    case productTitle = "D.Va Headset"
    case finish = "Finish"
    case material = "Material"
    case value = "$93.00"
    case description = "A headset as worn by Hana Song in Overwatch"
    case category = "Category: Overwatch"
    case quantity = "Quantity: 1"
    case alertMessageTitle = "Successful"
    case alertMessageDescription = "Item added to cart."

    case list = "LIST"
    case addToCart = "ADD TO CART"
    case noPainting = "No Painting"
    case pla = "PLA"
    case abs = "ABS"
    case decrement = "Decrement"
    case increment = "Increment"

    var element: XCUIElement {
        switch self {
        case .productTitle, .finish, .material, .value, .description, .category, .quantity, .alertMessageTitle, .alertMessageDescription:
            return XCUIApplication().staticTexts[self.rawValue]

        case .list, .addToCart, .noPainting, .pla, .abs, .decrement, .increment:
            return XCUIApplication().buttons[self.rawValue]
        }
    }
}
