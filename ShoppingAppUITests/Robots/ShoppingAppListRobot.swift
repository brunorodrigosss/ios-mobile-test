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
    func shoppingAppList_allowLocation() {
        XCTContext.runActivity(named: "Allow locarion") { _ in
//            if (app.alerts.element.collectionViews.buttons["Allow"].exists) {
//                app.tap()
//            }
//            if (ShoppingAppListScreen.allow.element.exists){
//                ShoppingAppListScreen.allow.element.tap()
//            }

            if (ShoppingAppListScreen.allow.element.exists){
                app.alerts["Allow “Shopping App” to access your location while you are using the app?"].buttons["Allow"].tap()
            }

        }

    }
    func shoppingAppList_syncAppIsReady() {
        XCTContext.runActivity(named: "Sync app is Ready") { _ in
            XCTAsyncAssert(ShoppingAppListScreen.home.element)
        }
    }

    func shoppingAppList_tapButton(option: String) {
        shoppingAppList_allowLocation()
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

//    func shoppingAppList_tapButtonHome() {
//        XCTContext.runActivity(named: "Tap button Home") { _ in
//            ShoppingAppListScreen.home.element.tap()
//        }
//    }
//
//    func shoppingAppList_tapButtonSearch() {
//        XCTContext.runActivity(named: "Tap button Search") { _ in
//            ShoppingAppListScreen.search.element.tap()
//        }
//    }
}
