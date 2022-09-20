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
    let writerName, createdDate, lastModifiedDate, title: String
    let body: String
    let viewCount, commentCount: Int
    let images: [String]
}

typealias Posts = [Post]
