//
//  CommentsModel.swift
//  Swift-SolidPrinicple
//
//  Created by ReetDhillon on 2024-02-07.
//

import Foundation

struct CommentsModel: Codable,Identifiable {
    let postID, id: Int?
    let name, email, body: String?
    
    enum CodingKeys: String, CodingKey {
        case postID = "postId"
        case id, name, email, body
    }
}


struct UserModel: Codable, Identifiable {
    let id: Int?
    let name, email : String?
}
