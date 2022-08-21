//
//  File.swift
//  
//
//  Created by Polina Tikhomirova on 21.08.2022.
//

import Vapor

struct Reviews: Content {
    let message: String
    
    enum CodingKeys: String, CodingKey {
        case message = "message"
    }
    
    init(_: String) {
        message = ""
    }
    
    init(message: String) {
        self.message = message
    }
}

extension Reviews: LosslessStringConvertible {
    var description: String {
        return ""
    }
}


