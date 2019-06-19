//
//  ShoppingAppTests.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/16/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import Foundation
import XCTest

class ShoppingAppTests: ShoppingAppUiTestsBase {
        let headset = "D.Va Headset"
        let scoutsGun = "Scout's Gun"

    func testAddAndRemoveItemFromTheCart() {
        let product: String = "D.Va Headset"
        addProductToCartByHome(product: product)
        removeHeadsetToCart()
    }

    func testBrowseAndBuyTwoDifferentItens() {
        shoppingAppList_tapButton(option: "Search")

        addProductToCartBySearch(product: "Scout's Gun")

        productDetails_backToSearchScreen()

        addProductToCartBySearch(product: "D.Va Headset")

        productDetails_tapCartIcon(product: "D.Va Headset")

        cartScreen_tapCheckout()

        checkout_fillFields(cardNumber: "1111222233334444", expirationDateMonth: "07",
                            expirationDateYear:"2019", cvv: "953",pickupPoint:"939 Marion Rd, Mitchell Park")
        
        checkout_concludeCheckout()

        confirmation_checkScreenElements()
    }

    func testBrowseTroughSearchBuyItemChangingFinishAndMaterialAndQuantityInDifferentAddress() {
        shoppingAppList_tapButton(option: "Search")
        let product = headset

        search_searchProduct(product: product)

        search_tapProduct(product: product)

        productDetails_tapPaintingFinish()
        productDetails_tapAbsMaterial()
        productDetails_incrementProduct(quantity: 5)

        productDetails_tapAddToCart()
        productDetails_tapCartIcon(product: product)

        cartScreen_tapCheckout()

        checkout_fillFields(cardNumber: "1111222233334444", expirationDateMonth: "07",
                            expirationDateYear:"2019", cvv: "953",pickupPoint:"939 Marion Rd, Mitchell Park")

        checkout_concludeCheckout()

        confirmation_checkScreenElements()
    }
}
