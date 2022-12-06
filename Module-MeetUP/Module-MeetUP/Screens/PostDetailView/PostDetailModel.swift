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
    
    init() {
        self.network = MeetUpNetworkService()
    }
    
    func fetchPost(with postId: Int) -> AnyPublisher<Post, MeetUpNetworkError> {
        return network.fetchPost(with: postId)
    }
    
    func fetchPostImage(with imageString: String) -> AnyPublisher<[Data], MeetUpNetworkError> {
        return network.fetchPostImage(with: imageString)
    }
}
