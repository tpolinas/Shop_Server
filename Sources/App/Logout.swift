//
//  File.swift
//  
//
//  Created by Polina Tikhomirova on 20.08.2022.
//

import Vapor

struct Logout: Content {
    let id: Int
    
    enum CodingKeys: String, CodingKey {
        case id = "id_user"
    }
    
    init(id: Int) {
        self.id = id
    }
}

