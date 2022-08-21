//
//  File.swift
//  
//
//  Created by Polina Tikhomirova on 21.08.2022.
//

import Vapor

struct RemoveReview: Content {
    let result: Int
    
    enum CodingKeys: String, CodingKey {
        case result = "result"
    }
    
    init(result: Int) {
        self.result = result
    }
}
