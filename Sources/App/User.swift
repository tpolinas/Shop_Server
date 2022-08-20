//
//  File.swift
//  
//
//  Created by Polina Tikhomirova on 20.08.2022.
//

import Vapor

struct User: Content {
    let id: Int
    let login: String
    let name: String
    let lastname: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id_user"
        case login = "user_login"
        case name = "user_name"
        case lastname = "user_lastname"
    }
    
    init(
        id: Int,
        login: String,
        name: String,
        lastname: String
    ) {
        self.id = id
        self.login = login
        self.name = name
        self.lastname = lastname
    }
}


