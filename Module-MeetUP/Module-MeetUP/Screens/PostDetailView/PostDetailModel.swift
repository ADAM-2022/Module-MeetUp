//
//  PostDetailModel.swift
//  Module-MeetUP
//
//  Created by Noah Park on 2022/09/20.
//

import Foundation
import Combine

struct PostDetailModel {
    let network: MeetUpNetwork
    let postId: Int
    
    init(postId: Int) {
        self.postId = postId
        self.network = MeetUpNetworkService()
    }
    
    func fetchPost(with postId: Int) -> AnyPublisher<Post, MeetUpNetworkError> {
        return network.fetchPost(with: postId)
    }
}
