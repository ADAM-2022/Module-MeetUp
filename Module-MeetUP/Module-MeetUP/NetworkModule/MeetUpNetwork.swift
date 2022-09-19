//
//  Network.swift
//  Module-MeetUP
//
//  Created by Noah Park on 2022/09/19.
//

import Foundation
import Combine

enum MeetUpNetworkError: Error {
    case error(String)
    case defaultError
    
    var message: String? {
        switch self {
        case let .error(msg):
            return msg
        case .defaultError:
            return "Default Error: Please try again later."
        }
    }
}

protocol MeetUpNetwork {
    func fetchPost(with postId: Int) -> AnyPublisher<Post, MeetUpNetworkError>
}
