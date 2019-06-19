//
//  ShoppingAppUITestsBase.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/16/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import Foundation
import XCTest

class ShoppingAppUiTestsBase: XCTestCase {
    var app = XCUIApplication()
    let springboard = XCUIApplication(bundleIdentifier: "com.apple.springboard")

    override func setUp() {
        resetApplication(appName: "Shopping App")
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
        super.tearDown()
    }

    func XCTAsyncAssert(_ element: XCUIElement) {
        let isElementExist = element.waitForExistence(timeout: 5)
        if isElementExist {
            XCTAssertTrue(element.exists)
        }
    }

    func resetApplication(appName: String) {
        XCUIApplication().terminate()

        let icon = springboard.icons[appName]
        if icon.exists {
            icon.press(forDuration: 2.0)

            icon.buttons["DeleteButton"].tap()
            sleep(2)
            springboard.alerts["Delete “\(appName)”?"].buttons["Delete"].tap()
            sleep(2)

            XCUIDevice.shared.press(.home)
        }
    }

    func allowLocation() {
        addUIInterruptionMonitor(withDescription: "Allow “Shopping App” to access your location while you are using the app?") { (alert) -> Bool in
            let button = alert.buttons["Allow"]
            if button.exists {
                button.tap()
                return true
            }
            return false
        }
    }

    func addProductToCartBySearch(product: String) {
        search_searchProduct(product: product)
        search_tapProduct(product: product)

        productDetails_tapAddToCart()
    }

    func addProductToCartByHome(product: String) {
        shoppingAppList_tapButton(option: "Home")

        home_tapButtonStartShopping()

        productList_tapProduct(product: product)

        productDetails_tapAddToCart()
        productDetails_tapCartIcon(product: product)
    }

    func removeHeadsetToCart() {
        cartScreen_tapEdit()
        cartScreen_tapMinusIcon()
        cartScreen_tapDelete()
        cartScreen_assertTotalZeros()
    }
}
