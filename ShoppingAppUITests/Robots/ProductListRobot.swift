//
//  ProductListRobot.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/16/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import Foundation
import XCTest

extension ShoppingAppUiTestsBase {
    func productList_tapProduct(product: String) {
        XCTContext.runActivity(named: "Tap \(product) Product") { _ -> Void in
            switch (product) {
            case "D.Va Headset":
                return ProductListScreen.product1.element.tap()

            case "Scout's Gun":
                return ProductListScreen.product1.element.tap()

            default: break
            }

        }
    }
}



