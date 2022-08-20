//
//  File.swift
//  
//
//  Created by Polina Tikhomirova on 20.08.2022.
//

import Vapor

struct Registration: Content {
    let userID: Int
    let username: String
    let password: String
    let email: String
    let gender: String
    let creditCard: String
    let bio: String
    
    enum CodingKeys: String, CodingKey {
        case userID = "id_user"
        case username = "username"
        case password = "password"
        case email = "email"
        case gender = "gender"
        case creditCard = "credit_card"
        case bio = "bio"
    }
    
    init(
        userID: Int,
        username: String,
        password: String,
        email: String,
        gender: String,
        creditCard: String,
        bio: String
    ) {
        self.userID = userID
        self.username = username
        self.password = password
        self.email = email
        self.gender = gender
        self.creditCard = creditCard
        self.bio = bio
    }
}

