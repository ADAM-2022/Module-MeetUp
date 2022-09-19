//
//  NetworkService.swift
//  Module-MeetUP
//
//  Created by Noah Park on 2022/09/19.
//

import Foundation
import Combine

class MeetUpNetworkService: MeetUpNetwork {
    
    private let session: URLSession
    
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    /// Get: id로 게시글 조회 Request
    ///
    /// 단계마다 Error을 잘 설정해 주어야 나중에 문제가 생겼을 때 디버깅이 빠릅니다.
    /// 해당 함수는 다음의 순서로 작동합니다.
    /// 1. makeFetchPostComponents 함수를 통해 url 생성 (error시 invalid URL Fail Publisher 반환)
    /// 2. 생성된 URL을 사용하여 Request Publisher 생성
    /// 3. 해당 Publisher는 Response을 받았을 때, 해당 data를 Post 모델 모양으로 decode 해줍니다.
    ///
    /// 주의해야할 점: 이 함수의 경우 maxPublisher라는 것을 사용하는데, [Post] 로 받은 반환값에서 단일 Post만 사용하기 위함입니다.
    ///
    /// 해당 레포지토리 참조 바랍니다. https://github.com/fimuxd/BringMyOwnBeer-Combine
    ///
    func fetchPost(with postId: Int) -> AnyPublisher<Post, MeetUpNetworkError> {
        guard let url = makeFetchPostComponents(postId: postId).url
        else {
            let error = MeetUpNetworkError.error("invalid URL")
            return Fail(error: error).eraseToAnyPublisher()
        }
        
        return session.dataTaskPublisher(for: URLRequest(url: url))
            .mapError { error in
                MeetUpNetworkError.error("API Error while fetch post-\(postId): \(error)")
            }
            .flatMap(maxPublishers: .max(1)) { data in
                return Just(data.data)
                    .decode(type: Post.self, decoder: JSONDecoder())
                    .mapError { _ in
                        .error("JSON parsing Error")
                    }
            }
            .eraseToAnyPublisher()
    }
}

private extension MeetUpNetworkService {
    struct MeetUpAPI {
        static let scheme = "https"
        static let host = "poding.site:8080"
        static let postsPath = "/posts"
        // MARK: 이곳에 각자의 Path를 적으면 됩니다.
    }
    
    // MARK: Request URL을 만드는 함수
    func makeFetchPostComponents(postId: Int) -> URLComponents {
        var components = URLComponents()
        components.scheme = MeetUpAPI.scheme
        components.host = MeetUpAPI.host
        components.path = MeetUpAPI.postsPath + "/\(postId)"
        return components
    }
}
