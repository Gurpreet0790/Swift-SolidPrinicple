//
//  CommentsViewModel.swift
//  Swift-SolidPrinicple
//
//  Created by ReetDhillon on 2024-02-07.
//

import Foundation

class CommentsViewModel: ObservableObject{
    
    let serviceHandler: CommentsViewServicesDelegate
    let databasehandler: CommentsViewServicesDelegate
    @Published var comments = [CommentsModel]()
    
    init(serviceHandler: CommentsViewServicesDelegate = CommentsViewServices(), databasehandler: CommentsViewServicesDelegate = CommentsViewServices(), comments: [CommentsModel] = [CommentsModel]()) {
        self.serviceHandler = serviceHandler
        self.databasehandler = databasehandler
        self.comments = comments
    }
    func fetchComments() {
        
        if isNetworkConnected() {
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
    
    private func isNetworkConnected() -> Bool {
        return true
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
}
