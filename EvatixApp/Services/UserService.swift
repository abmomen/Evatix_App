//
//  UserService.swift
//  EvatixApp
//
//  Created by Sharetrip-iOS on 06/02/2021.
//
import Alamofire


protocol UserServiceProtocol {
    func login(
        request: LoginRequest,
        onSuccess: @escaping (User) -> Void,
        onFailure: @escaping (String) -> Void
    )
    func Signup(
        request: SignupRequest,
        onSuccess: @escaping (String) -> Void,
        onFailure: @escaping (String) -> Void
    )
}

class UserService: UserServiceProtocol {
    func login(
        request: LoginRequest,
        onSuccess: @escaping (User) -> Void,
        onFailure: @escaping (String) -> Void) {
        
        APIClient.performRequest(router: request.router, completion: {(result: AFResult<User>) in
            switch result {
            case .success(let user):
                onSuccess(user)
            case .failure(let error):
                onFailure(error.localizedDescription)
            }
        })
    }
    
    func Signup(
        request: SignupRequest,
        onSuccess: @escaping (String) -> Void,
        onFailure: @escaping (String) -> Void) {
        
        APIClient.performRequest(router: request.router) { (result: AFResult<String>) in
            switch result {
            case .success(let status):
                onSuccess(status)
            case .failure(let error):
                onFailure(error.localizedDescription)
            }
        }
    }
}
