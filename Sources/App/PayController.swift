//
//  File.swift
//  
//
//  Created by Polina Tikhomirova on 29.08.2022.
//

import Vapor

class PayController {
    
    func pay(_ req: Request) throws -> EventLoopFuture<PayResponse> {
        var response = PayResponse()
        print(req)
        guard let body = try? req.content.decode(PayRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        response = PayResponse(
            result: 1,
            errorMessage: nil
        )
        return req.eventLoop.future(response)
    }
}
