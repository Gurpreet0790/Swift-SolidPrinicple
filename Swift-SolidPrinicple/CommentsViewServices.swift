//
//  CommentsViewServices.swift
//  Swift-SolidPrinicple
//
//  Created by ReetDhillon on 2024-02-07.
//

import Foundation

protocol CommentsViewServicesDelegate {
    func getComments(completion: @escaping(Result<[CommentsModel], DemoError>) -> Void)
    func fetchUsers(completion: @escaping(Result<[UserModel], DemoError>) -> Void)
}

class CommentsViewServices: CommentsViewServicesDelegate {

    func getComments(completion: @escaping(Result<[CommentsModel], DemoError>) -> Void){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/comments") else {
            return completion(.failure(.BadURL))
        }
        NetworkManager().fetchRequest(type:[CommentsModel].self, url: url, completion: completion)
    }
    
    func fetchUsers(completion: @escaping(Result<[UserModel], DemoError>) -> Void){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/user") else {
            return completion(.failure(.BadURL))
        }
        NetworkManager().fetchRequest(type:[UserModel].self, url: url, completion: completion)
    }
}
