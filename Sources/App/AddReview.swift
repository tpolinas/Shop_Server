//
//  File.swift
//  
//
//  Created by Polina Tikhomirova on 21.08.2022.
//

import Vapor

struct AddReview: Content {
    let message: String
    
    enum CodingKeys: String, CodingKey {
        case message = "message"
    }
    
    init(message: String) {
        self.message = message
    }
}
