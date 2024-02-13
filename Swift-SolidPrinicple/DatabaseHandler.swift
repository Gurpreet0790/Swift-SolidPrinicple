//
//  DatabaseHandler.swift
//  Swift-SolidPrinicple
//
//  Created by ReetDhillon on 2024-02-12.
//

import Foundation

class DatabaseHandler :  CommentsDelegate {    
    func getComments(completion: @escaping (Result<[CommentsModel], DemoError>) -> Void) {
        guard let url = Bundle.main.url(forResource: "Comments", withExtension: "json"),
              let  data = try?  Data(contentsOf: url),
                let model = try? JSONDecoder().decode([CommentsModel].self, from: data)  else {
            return completion(.failure(.DecodingError))
        }
        completion(.success(model))
    }
}
