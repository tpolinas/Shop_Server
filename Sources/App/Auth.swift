//
//  File.swift
//  
//
//  Created by Polina Tikhomirova on 20.08.2022.
//

import Vapor

struct Auth: Content {
    let username: String
    let password: String
    
    enum CodingKeys: String, CodingKey {
        case username = "username"
        case password = "password"
    }
    
    init(
        username: String,
        password: String
    ) {
        self.username = username
        self.password = password
    }
}

