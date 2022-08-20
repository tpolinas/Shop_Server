//
//  File.swift
//  
//
//  Created by Polina Tikhomirova on 20.08.2022.
//

import Vapor

struct Product: Content {
    let result: Int
    let productName: String
    let productPrice: Int
    let productDescription: String
    
    enum CodingKeys: String, CodingKey {
        case result
        case productName = "product_name"
        case productPrice = "product_price"
        case productDescription = "product_description"
    }
    
    init(
        result: Int,
        productName: String,
        productPrice: Int,
        productDescription: String
    ) {
        self.result = result
        self.productName = productName
        self.productPrice = productPrice
        self.productDescription = productDescription
    }
}
