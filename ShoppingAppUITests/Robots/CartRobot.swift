//
//  CartRobot.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/16/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import Foundation
import XCTest

extension ShoppingAppUiTestsBase {
    func cartScreen_tapEdit() {
        XCTContext.runActivity(named: "Tap edit cart") { _ in
            CartSreen.edit.element.tap()
        }
    }

    func cartScreen_tapMinusIcon() {
        XCTContext.runActivity(named: "Tap minus icon") { _ in
            CartSreen.deleteHeadSet.element.tap()
        }
    }

    func cartScreen_tapDelete() {
        XCTContext.runActivity(named: "Tap delete") { _ in
            CartSreen.delete.element.tap()
        }
    }

    func cartScreen_assertTotalZeros() {
        XCTContext.runActivity(named: "Assert total zeros") { _ in
            XCTAssertTrue(CartSreen.totalZeros.element.exists)
        }
    }

    func cartScreen_tapCheckout() {
        XCTContext.runActivity(named: "Tap checkout") { _ in
            CartSreen.checkout.element.tap()
        }
    }
}
