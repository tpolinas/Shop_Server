//
//  File.swift
//  
//
//  Created by Polina Tikhomirova on 22.08.2022.
//

import Vapor

struct RemoveFromCart: Content {
    let item: String
    let amount: Int
    
    enum CodingKeys: String, CodingKey {
        case item = "product_name"
        case amount = "amount"
    }
    
    init(
        item: Product,
        amount: Int
    ) {
        self.item = item.productName
        self.amount = amount
    }
}
