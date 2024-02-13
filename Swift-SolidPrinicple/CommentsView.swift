//
//  CommentsView.swift
//  Swift-SolidPrinicple
//
//  Created by ReetDhillon on 2024-02-07.
//

import SwiftUI

struct CommentsView: View {
    
    @ObservedObject private var viewModel = CommentsViewModel()

    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.comments) { comment in
                        NavigationLink {
                        } label: {
                            CommentsRow(commentModel: comment)
                        }
                        
                    }
                }
            }.onAppear {
                viewModel.fetchComments()
            }
            .navigationTitle("Comment List")
        }
    }
}

#Preview {
    CommentsView()
}
