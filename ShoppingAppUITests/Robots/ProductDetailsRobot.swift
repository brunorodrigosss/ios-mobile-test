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
        XCTContext.runActivity(named: "Tap add to cart") { _ in
            ProductDetailsScreen.addToCart.element.tap()
            productDetails_checkAddToCartAlertMessage()
        }

    }

    func productDetails_checkAddToCartAlertMessage() {
        XCTAsyncAssert(ProductDetailsScreen.alertMessageTitle.element)
        XCTContext.runActivity(named: "Check alert title") { _ in
            XCTAssertTrue(ProductDetailsScreen.alertMessageTitle.element.exists)
        }

        XCTContext.runActivity(named: "Check alert description") { _ in
            XCTAssertTrue(app.alerts["Successful"].staticTexts["Item added to cart. "].exists)
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

    func productDetails_tapPaintingFinish() {
        XCTContext.runActivity(named: "Tap painting finish") { _ in
            ProductDetailsScreen.painting.element.tap()
            XCTAssertFalse(ProductDetailsScreen.noPainting.element.isSelected)
            XCTAssertTrue(ProductDetailsScreen.painting.element.isSelected)
            productDetails_assertValueBeforeChange(optionChange: "Painting")
        }
    }

    func productDetails_tapAbsMaterial() {
        XCTContext.runActivity(named: "Tap abs material") { _ in
            ProductDetailsScreen.abs.element.tap()
            XCTAssertFalse(ProductDetailsScreen.pla.element.isSelected)
            XCTAssertTrue(ProductDetailsScreen.abs.element.isSelected)
            productDetails_assertValueBeforeChange(optionChange: "ABS")
        }
    }

    func productDetails_backToSearchScreen() {
        XCTContext.runActivity(named: "Back to search screen") { _ in
            let app = XCUIApplication()
            app.navigationBars["Scout's Gun"].buttons["SEARCH"].tap()
        }
    }

    func productDetails_assertElements(product: String) {
        XCTContext.runActivity(named: "Assert elements") { _ in
            switch (product) {
            case "D.Va Headset":
                XCTAssertTrue(ProductDetailsScreen.productTitle.element.exists)
                XCTAssertTrue(ProductDetailsScreen.value1.element.exists)
                XCTAssertTrue(ProductDetailsScreen.description.element.exists)
                if (ProductDetailsScreen.category.element.exists) {
                    productDetails_assertIncrementAndDecrement()
                } else {
                    XCTAssertTrue(ProductDetailsScreen.category.element.exists)
                }

            case "Scout's Gun":
                XCTAssertTrue(ProductDetailsScreen.productTitle2.element.exists)
                XCTAssertTrue(ProductDetailsScreen.value2.element.exists)
                XCTAssertTrue(ProductDetailsScreen.description2.element.exists)

                if (ProductDetailsScreen.category2.element.exists) {
                    productDetails_assertIncrementAndDecrement()
                } else {
                    XCTAssertTrue(ProductDetailsScreen.category2.element.exists)
                }
            default:
                break
            }
            XCTAssertTrue(XCUIApplication().navigationBars[product].exists)
            XCTAssertTrue(ProductDetailsScreen.finish.element.exists)
            productDetails_assertNoPainting()
            productDetails_assertPainting()
            XCTAssertTrue(ProductDetailsScreen.material.element.exists)
            productDetails_assertPla()

        }
    }

    func productDetails_incrementProduct(quantity: Int){
        XCTContext.runActivity(named: "Increment product") { _ in
            var count = 1
            while (count < quantity){
                ProductDetailsScreen.increment.element.tap()
                count += 1
                XCTAssertTrue(ProductDetailsScreen.decrement.element.isEnabled)
            }
        }
    }

    func productDetails_decrementProduct(quantity: Int){
        XCTContext.runActivity(named: "Decrement product") { _ in
            var count = 1
            while (count < quantity){
                ProductDetailsScreen.decrement.element.tap()
                count += 1
            }
        }
    }

    func productDetails_assertIncrementAndDecrement() {
        XCTAssertTrue(ProductDetailsScreen.decrement.element.exists)
        XCTAssertFalse(ProductDetailsScreen.decrement.element.isSelected)
        XCTAssertTrue(ProductDetailsScreen.increment.element.exists)
        XCTAssertFalse(ProductDetailsScreen.increment.element.isSelected)
    }

    func productDetails_assertNoPainting() {
        XCTAssertTrue(ProductDetailsScreen.noPainting.element.exists)
        XCTAssertTrue(ProductDetailsScreen.noPainting.element.isSelected)
    }

    func productDetails_assertPainting() {
        XCTAssertTrue(ProductDetailsScreen.painting.element.exists)
        XCTAssertFalse(ProductDetailsScreen.painting.element.isSelected)
    }

    func productDetails_assertPla() {
        XCTAssertTrue(ProductDetailsScreen.pla.element.exists)
        XCTAssertTrue(ProductDetailsScreen.pla.element.isSelected)
    }

    func productDetails_assertAbs() {
        XCTAssertTrue(ProductDetailsScreen.abs.element.exists)
        XCTAssertFalse(ProductDetailsScreen.abs.element.isSelected)
    }

    func productDetails_assertValueBeforeChange(optionChange: String) {
        switch (optionChange) {
        case "Painting":
            XCTAssertTrue(ProductDetailsScreen.value1Painting.element.exists)

        case "ABS":
            XCTAssertTrue(ProductDetailsScreen.value1Abs.element.exists)

        default:
            break
        }
    }
}
