//
//  ProductDetailsRobot.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/16/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import Foundation
import XCTest

extension ShoppingAppUiTestsBase {
    func productDetails_tapAddToCart() {
        XCTContext.runActivity(named: "Tap headset product") { _ in
            ProductDetailsScreen.addToCart.element.tap()
        }
        productDetails_checkAddToCartAlertMessage()
    }

    func productDetails_checkAddToCartAlertMessage() {
        XCTContext.runActivity(named: "Check alert title") { _ in
            XCTAssertTrue(ProductDetailsScreen.alertMessageTitle.element.exists)
        }

        XCTContext.runActivity(named: "Check alert description") { _ in
            XCTAssertTrue(ProductDetailsScreen.alertMessageDescription.element.exists)
        }
    }

    func productDetails_tapCartIcon(product: String) {
        XCTContext.runActivity(named: "Tap cart icon") { _ in
            if (product == "D.Va Headset") {
                XCUIApplication().navigationBars["D.Va Headset"].children(matching: .button).element(boundBy: 1).tap()
            }

            if (product == "Scout's Gun") {
                XCUIApplication().navigationBars["Scout's Gun"].children(matching: .button).element(boundBy: 1).tap()
            }
        }
    }

    func productDetails_backToSearchScreen() {
        XCTContext.runActivity(named: "Back to search screen") { _ in
            let app = XCUIApplication()
            app.navigationBars["Scout's Gun"].buttons["SEARCH"].tap()
        }
    }
}
