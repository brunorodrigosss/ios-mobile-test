//
//  HomeRobot.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/16/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import Foundation
import XCTest

extension ShoppingAppUiTestsBase {
    func home_tapButtonStartShopping() {
        home_assertElements()
        
        XCTContext.runActivity(named: "Tap button start shopping") { _ in
            HomeScreen.startShopping.element.tap()
        }
    }

    func home_assertElements() {
        XCTAsyncAssert(HomeScreen.home.element)

        XCTContext.runActivity(named: "Assert elements") { _ in
            XCTAssertTrue(HomeScreen.home.element.exists)
            XCTAssertTrue(HomeScreen.title.element.exists)
            XCTAssertTrue(HomeScreen.subtitle.element.exists)
            XCTAssertTrue(HomeScreen.text.element.exists)
            XCTAssertTrue(HomeScreen.shoppingApp.element.exists)
            XCTAssertTrue(HomeScreen.startShopping.element.exists)

        }
    }
}
