//
//  CartScreen.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/16/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import Foundation
import XCTest

enum CartSreen: String {
    case totalText = "Total"
    case totalValue = "$120.00"
    case totalZeros = "$0.00"
    case headset = "D.Va Headset"
    case headsetPrice = "$60.00"
    case paintDetails = "Finish: No Paint"
    case quantity = "Quantity: 1"
    case material = "Material: PLA"
    case edit = "Edit"
    case checkout = "CHECKOUT"
    case deleteHeadSet = "Delete D.Va Headset, $60.00, Finish: No Paint, Quantity: 1, Material: PLA"
    case delete = "Delete"

    var element: XCUIElement {
        switch self {
        case .totalText, .totalValue, .totalZeros, .headset, .headsetPrice, .paintDetails, .quantity, .material:
            return XCUIApplication().staticTexts[self.rawValue]

        case .edit, .checkout, .deleteHeadSet, .delete:
            return XCUIApplication().buttons[self.rawValue]
        }
    }
}
