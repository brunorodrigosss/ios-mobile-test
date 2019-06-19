//
//  SearchRobot.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/16/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import Foundation
import XCTest

extension ShoppingAppUiTestsBase {
    func search_searchProduct(product: String) {
        XCTContext.runActivity(named: "Search product: \(product)") { _ in
            if (SearchScreen.cancel.element.isEnabled){
                SearchScreen.cancel.element.tap()
            }
            SearchScreen.searchItem.element.tap()
            SearchScreen.searchItem.element.typeText(product)
        }
        serch_assertItemVisibleOnly(product: product)
    }

    func serch_assertItemVisibleOnly(product: String) {
        XCTContext.runActivity(named: "Assert item visible only") { _ in
            if (product == "Scout's Gun") {
                XCTAssertTrue(SearchScreen.product2.element.exists)
                XCTAssertFalse(SearchScreen.product1.element.exists)
            } else {
                XCTAssertTrue(SearchScreen.product1.element.exists)
                XCTAssertFalse(SearchScreen.product2.element.exists)
            }

        }
    }

    func search_tapProduct(product: String) {
        XCTContext.runActivity(named: "Tap product: \(product)") { _ in
            if (product == "Scout's Gun") {
                SearchScreen.product2.element.tap()
            } else {
                if (product == "D.Va Headset") {
                    SearchScreen.product1.element.tap()
                }
            }
            productDetails_assertElements(product: product)
        }
    }
}
