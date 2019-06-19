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
    case productTitle2 = "Scout's Gun"
    case finish = "Finish"
    case material = "Material"
    case value1 = "$60.00"
    case value1Painting = "$93.00"
    case value1Abs = "$99.00"
    case value2 = "$98.00"
    case description = "A headset as worn by Hana Song in Overwatch"
    case description2 = "The gun used by Scout in Team Fortress 2"
    case category = "Category: Overwatch"
    case category2 = "Category: TF2, Team Fortress 2"
    case quantity = "Quantity: 1"
    case alertMessageTitle = "Successful"
    case alertMessageDescription = "Item added to cart."
    case list = "LIST"
    case addToCart = "ADD TO CART"
    case noPainting = "No Painting"
    case painting = "Painting"
    case pla = "PLA"
    case abs = "ABS"
    case decrement = "Decrement"
    case increment = "Increment"

    var element: XCUIElement {
        switch self {
        case .productTitle, .productTitle2, .finish, .material, .value1, .value1Painting, .value1Abs,
             .value2, .description, .description2, .category, .category2, .quantity, .alertMessageTitle,
             .alertMessageDescription:
            return XCUIApplication().staticTexts[self.rawValue]

        case .list, .addToCart, .noPainting, .painting, .pla, .abs, .decrement, .increment:
            return XCUIApplication().buttons[self.rawValue]
        }
    }
}
