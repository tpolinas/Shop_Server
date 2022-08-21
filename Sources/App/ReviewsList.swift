//
//  File.swift
//  
//
//  Created by Polina Tikhomirova on 21.08.2022.
//

import Vapor

struct ReviewsList: Content {
    let list: [Reviews]
    
    enum CodingKeys: String, CodingKey {
        case list = "ReviewsList.json"
    }
    
    init(list: [Reviews]) {
        self.list = list
    }
}
