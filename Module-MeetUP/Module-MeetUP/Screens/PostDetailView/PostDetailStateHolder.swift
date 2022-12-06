//
//  PostDetailStateHolder.swift
//  Community
//
//  Created by Noah Park on 2022/09/18.
//

import Foundation
import Combine

final class PostDetailStateHolder: ObservableObject {
    
    let postId: Int
    @Published var postDetail: Post?
    @Published var postImages: [Data] = []
    @Published var showingAlert: Bool = false
    @Published var errorMessage: String = ""
    
    let fetchPostPublisher = PassthroughSubject<Int, MeetUpNetworkError>()
    let fetchPostImagePublisher = PassthroughSubject<String, MeetUpNetworkError>()
    
    private var cancellablels = Set<AnyCancellable>()
    
    init(model: PostDetailModel = PostDetailModel() , postId: Int) {
        self.postId = postId
        fetchPostPublisher
            .flatMap (model.fetchPost)
            .receive(on: DispatchQueue.main)
            .sink(
                receiveCompletion: {
                    guard case .failure(let error) = $0 else { return }
                    self.showingAlert = true
                    self.errorMessage = error.message ?? "An Error Occured while fetch"
                },
                receiveValue: { post in
                    self.postDetail = post
                }
            )
            .store(in: &cancellablels)
            
    }
}

