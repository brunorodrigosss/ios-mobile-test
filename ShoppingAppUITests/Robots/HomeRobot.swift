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
        XCTContext.runActivity(named: "Tap Button Start Shopping") { _ in
            HomeScreen.startShopping.element.tap()
        }
    }
}
