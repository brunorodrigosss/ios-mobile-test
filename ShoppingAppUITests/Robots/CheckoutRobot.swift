//
//  CheckoutRobot.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/17/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import Foundation
import XCTest

extension ShoppingAppUiTestsBase {
    func checkout_fillCardNumber(cardNumber: String) {
        XCTContext.runActivity(named: "Fill card number: \(cardNumber)") { _ in
            CheckoutScreen.cardDetailsMask.element.tap()
            CheckoutScreen.cardDetailsMask.element.typeText(cardNumber)
        }
    }

    func checkout_fillExpiryDate(mm: String, yyyy: String) {
        XCTContext.runActivity(named: "Fill expiry date mm, yyyy: \(mm), \(yyyy)") { _ in
            CheckoutScreen.cardExpirationDateMonth.element.tap()
            CheckoutScreen.cardExpirationDateMonth.element.typeText(mm)

            CheckoutScreen.cardExpirationDateYear.element.tap()
            CheckoutScreen.cardExpirationDateYear.element.typeText(yyyy)
        }
    }

    func checkout_fillCvv(cvv: String) {
        XCTContext.runActivity(named: "Fill cvv: \(cvv)") { _ in
            CheckoutScreen.cardCvv.element.tap()
            CheckoutScreen.cardCvv.element.typeText(cvv)
        }
    }

    func checkout_scrollTo(pickupPoint: String) {
        XCTContext.runActivity(named: "Scroll to: \(pickupPoint)") { _ in
            XCUIApplication().scrollViews.otherElements.pickerWheels[pickupPoint].swipeUp()
        }
    }

    func checkout_tapPayNow() {
        XCTContext.runActivity(named: "Tap paynow") { _ in
            CheckoutScreen.payNow.element.tap()
        }
    }

    func checkout_tapPay() {
        XCTContext.runActivity(named: "Tap pay") { _ in
            CheckoutScreen.pay.element.tap()
        }
    }

    func checkout_fillFields(cardNumber: String, expirationDateMonth: String, expirationDateYear:String,
                             cvv:String, pickupPoint:String) {
        XCTContext.runActivity(named: "Fill fields") { _ in
            checkout_fillCardNumber(cardNumber: cardNumber)
            checkout_fillExpiryDate(mm: expirationDateMonth, yyyy: expirationDateYear)
            checkout_fillCvv(cvv: cvv)
            checkout_scrollTo(pickupPoint: pickupPoint)
        }
    }
}
