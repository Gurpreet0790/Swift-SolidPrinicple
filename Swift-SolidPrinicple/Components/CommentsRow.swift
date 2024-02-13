//
//  CommentsRow.swift
//  Swift-SolidPrinicple
//
//  Created by ReetDhillon on 2024-02-07.
//

import SwiftUI

struct CommentsRow: View {
    var commentModel: CommentsModel
        var body: some View {
            VStack {
                Text(commentModel.name ?? "NA")
                    .font(.title3)
                Text(commentModel.email ?? "NA")
                    .font(.title2)
            }
        }
}

#Preview {
    CommentsRow(commentModel: CommentsModel(postID: 1, id: 1, name: "Reet", email: "gurpreet.dhillon03abc@gmail.com", body: "Solid Principle"))
}
