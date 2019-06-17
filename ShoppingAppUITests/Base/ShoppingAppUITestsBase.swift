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
        let isElementExist = element.waitForExistence(timeout: 10)
        if isElementExist {
            XCTAssertTrue(element.exists)
        }
    }

    func resetApplication(appName: String) {
//        XCUIApplication().terminate()
//
//        // Force delete the app from the springboard
//        let icon = springboard.icons[appName]
//        if icon.exists {
//            icon.press(forDuration: 2.0)
//
//            icon.buttons["DeleteButton"].tap()
//            sleep(2)
//            springboard.alerts["Delete “\(appName)”?"].buttons["Delete"].tap()
//            sleep(2)
//
//            XCUIDevice.shared.press(.home)
//        }
    }
}
