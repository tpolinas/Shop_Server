//
//  File.swift
//  
//
//  Created by Polina Tikhomirova on 22.08.2022.
//

import Vapor

struct Cart: Content {
    let item: String
    let price: Int
    let amount: Int
    let bill: Int
    
    enum CodingKeys: String, CodingKey {
        case item = "product_name"
        case price = "product_price"
        case amount = "amount"
        case bill = "bill"
    }
    
    init(
        item: Product,
        price: Product,
        amount: Int,
        bill: Int
    ) {
        self.item = item.productName
        self.price = price.productPrice
        self.amount = amount
        self.bill = bill
    }
}





