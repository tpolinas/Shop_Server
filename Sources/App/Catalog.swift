//
//  File.swift
//  
//
//  Created by Polina Tikhomirova on 20.08.2022.
//

import Vapor

struct Catalog: Content {
    let idProduct: Int
    let productName: String
    let price: Int
    
    enum CodingKeys: String, CodingKey {
        case idProduct = "id_product"
        case productName = "product_name"
        case price
    }
    
    init(
        idProduct: Int,
        productName: String,
        price: Int
    ) {
        self.idProduct = idProduct
        self.productName = productName
        self.price = price
    }
}

