//
//  User.swift
//  EvatixApp
//
//  Created by Sharetrip-iOS on 06/02/2021.
//

import Foundation

struct User: Decodable {
    let userName: String
    let email: String
    let password: String
    let isActive: Bool
    let taskList: [Task]
}

struct Task: Decodable {
    let taskTitle: String
    let taskType: TaskType
    let todoDate: String
    let startTime: String
    let endTime: String
    
    
}

enum TaskType: String, CaseIterable, Decodable {
    case work = "Work"
    case personal = "Personal"
    case shopping = "Shopping"
    case health = "Health"
    case others = "Others"
}
