//
//  Post.swift
//  Module-MeetUP
//
//  Created by Noah Park on 2022/09/19.
//

import Foundation

// MARK: - Post
struct Post: Codable {
    let id: Int
        let board, writerName, createdDate: String
        let modified: Bool
        let title, body: String
        let viewCount, commentCount: Int
        let images: [String]
}

typealias Posts = [Post]

struct MyError: Codable {
    let id, status, code, message: String
}
