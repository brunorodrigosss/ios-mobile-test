//
//  ShoppingAppListUiTest.swift
//  ShoppingAppUITests
//
//  Created by Bruno Soares on 6/16/19.
//  Copyright © 2019 Shyam Pindoria. All rights reserved.
//

import XCTest

class ShoppingAppListUiTest: ShoppingAppUiTestsBase {

    //Add and remove an item from the cart
    func testAddAndRemoveItemFromTheCart() {
        let product: String = "D.Va Headset"
        addProductToCartByHome(product: product)
        removeHeadsetToCart()
    }

    //Browse and buy an item with success at lease 2 different itens
    func testBrowseAndBuyTwoDifferentItens() {
        addProductToCartBySearch(product: "Scout's Gun")

        productDetails_backToSearchScreen()

        search_searchProduct(product: "D.Va Headset")
        search_tapProduct(product: "D.Va Headset")

        productDetails_tapAddToCart()
        productDetails_tapCartIcon(product: "D.Va Headset")

        cartScreen_tapCheckout()

        checkout_fillFields(cardNumber: "1111222233334444", expirationDateMonth: "07",
                            expirationDateYear:"2019", cvv: "953",pickupPoint:"939 Marion Rd, Mitchell Park")
        checkout_tapPayNow()
        checkout_tapPay()
        confirmation_checkScreenElements()
    }

    func addProductToCartByHome(product: String) {
        shoppingAppList_tapButton(option: "Home")

        home_tapButtonStartShopping()

        productList_tapProduct(product: "D.Va Headset")

        productDetails_tapAddToCart()
        productDetails_tapCartIcon(product: "D.Va Headset")
    }
    func addProductToCartBySearch(product: String) {
        shoppingAppList_tapButton(option: "Search")

        search_searchProduct(product: product)
        search_tapProduct(product: product)

        productDetails_tapAddToCart()
    }

    func removeHeadsetToCart() {
        cartScreen_tapEdit()
        cartScreen_tapMinusIcon()
        cartScreen_tapDelete()
        cartScreen_assertTotalZeros()
    }

}
