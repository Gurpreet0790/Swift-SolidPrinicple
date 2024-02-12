//
//  CommentsViewModel.swift
//  Swift-SolidPrinicple
//
//  Created by ReetDhillon on 2024-02-07.
//

import Foundation

class CommentsViewModel: ObservableObject{
    
    @Published var comments = [CommentsModel]()
    
    func fetchComments() {
        CommentsViewServices().getComments { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let comments):
                    print("Fetched new Comments")
                    self.comments = comments
                    
                case .failure(let error):
                    print(error)
                }
            }
            
        }
    }
}

func fetchUsers() {
    CommentsViewServices().fetchUsers { result in
        DispatchQueue.main.async {
            switch result {
            case .success(let comments):
                print("Fetched new Comments")                
            case .failure(let error):
                print(error)
            }
        }
        
    }
}
