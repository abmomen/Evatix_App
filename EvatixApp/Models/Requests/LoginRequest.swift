//
//  LoginRequest.swift
//  EvatixApp
//
//  Created by Sharetrip-iOS on 06/02/2021.
//

import Alamofire

struct LoginRequest: Encodable {
    var bodyData: BodyData
    
    struct BodyData: Encodable {
        let email: String
        let password: String
    }
}

extension LoginRequest {
    var endPoint: APIEndpoint {
        return APIEndpoint(
            method: .post,
            path: "/login"
        )
    }

    var parmaeters: Parameters? {
        return try? self.asDictionary()
    }
    
    var data: Data? {
        if let jsonData = try? JSONEncoder().encode(bodyData) {
            return jsonData
        } else {
            return nil
        }
    }

    var router: APIRouter {
        return APIRouter(
            endpoint: endPoint,
            parameters: parmaeters,
            bodyData: data
        )
    }
}
