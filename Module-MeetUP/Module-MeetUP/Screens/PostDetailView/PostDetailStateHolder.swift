//
//  PostDetailStateHolder.swift
//  Community
//
//  Created by Noah Park on 2022/09/18.
//

import SwiftUI

class PostDetailStateHolder: ObservableObject {
    
    let postId: Int?
    
    init(postId: Int) {
        self.postId = postId
    }
}

