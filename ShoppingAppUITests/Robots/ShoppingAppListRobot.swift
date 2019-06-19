//
//  ShoppingAppListRobot.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/16/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import Foundation
import XCTest

extension ShoppingAppUiTestsBase {
    func shoppingAppList_syncAppIsReady() {
        XCTContext.runActivity(named: "Sync app is Ready") { _ in
            XCTAsyncAssert(ShoppingAppListScreen.home.element)
        }
        shoppingAppList_assertElements()
    }

    func shoppingAppList_assertElements() {
        XCTContext.runActivity(named: "Assert Elements") { _ in
            XCTAssertTrue(ShoppingAppListScreen.shoppingApp.element.exists)
            XCTAssertTrue(ShoppingAppListScreen.home.element.exists)
            XCTAssertTrue(ShoppingAppListScreen.list.element.exists)
            XCTAssertTrue(ShoppingAppListScreen.search.element.exists)
            XCTAssertTrue(ShoppingAppListScreen.cart.element.exists)
            XCTAssertTrue(ShoppingAppListScreen.finder.element.exists)
            XCTAssertTrue(ShoppingAppListScreen.checkout.element.exists)
        }
    }

    func shoppingAppList_tapButton(option: String) {
        allowLocation()
        shoppingAppList_syncAppIsReady()

        XCTContext.runActivity(named: "Tap button \(option)") { _ -> Void in
            switch(option){
            case "Home":
                return ShoppingAppListScreen.home.element.tap()
            case "List":
                return ShoppingAppListScreen.list.element.tap()
            case "Search":
                return ShoppingAppListScreen.search.element.tap()
            case "Cart":
                return ShoppingAppListScreen.cart.element.tap()
            case "Finder":
                return ShoppingAppListScreen.finder.element.tap()
            case "Checkout":
                return ShoppingAppListScreen.checkout.element.tap()
            default: break
            }
        }
    }
}
