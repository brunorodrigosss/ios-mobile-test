//
//  ConfirmationRobot.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/17/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import Foundation
import XCTest

extension ShoppingAppUiTestsBase {
    func confirmation_checkScreenElements() {
        XCTContext.runActivity(named: "Check screen") { _ in
            XCTAssertTrue(ConfirmationScreen.title.element.exists)
            XCTAssertTrue(ConfirmationScreen.subtitle.element.exists)
            XCTAssertTrue(ConfirmationScreen.titleDescription.element.exists)
            XCTAssertTrue(ConfirmationScreen.titleDescription.element.exists)
            XCTAssertTrue(ConfirmationScreen.subtitleDescription.element.exists)
            XCTAssertTrue(ConfirmationScreen.subtitleDescription.element.exists)
            XCTAssertTrue(ConfirmationScreen.description.element.exists)
        }
    }
}
