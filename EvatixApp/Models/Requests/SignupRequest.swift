//
//  SignupRequest.swift
//  EvatixApp
//
//  Created by Sharetrip-iOS on 06/02/2021.
//

import Alamofire


struct SignupRequest: Encodable {
    let bodyData: BodyData
    
    struct BodyData: Encodable {
        let name: String
        let email: String
        let password: String
    }
}

extension SignupRequest {
    var endPoint: APIEndpoint {
        return APIEndpoint(
            method: .post,
            path: "/signup"
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
