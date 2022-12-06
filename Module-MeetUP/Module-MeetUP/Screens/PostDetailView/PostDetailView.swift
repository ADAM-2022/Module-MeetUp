//
//  PostDetailView.swift
//  Community
//
//  Created by Noah Park on 2022/09/17.
//

import SwiftUI

struct PostDetailView: View {
    @StateObject private var stateHolder: PostDetailStateHolder
    
    init(postId: Int) {
        self._stateHolder = StateObject(wrappedValue: PostDetailStateHolder(postId: postId))
    }
    
    var body: some View {
        VStack(spacing: .zero) {
            PostDetailBackButton()
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            ScrollView {
                VStack(spacing: .zero) {
                    PostDetailTitleArea(titleString: stateHolder.postDetail?.title)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 32, trailing: 0))
                    PostDetailInfoArea(writerString: stateHolder.postDetail?.writerName, createdTimeString: stateHolder.postDetail?.createdDate, viewCountNumber: stateHolder.postDetail?.viewCount)
                        .padding(.bottom, 16)
                }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                PostDetailBodyArea(stateHolder: stateHolder)
                    .frame(minHeight: 160, alignment: .top)
            }
            Spacer()
        }
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea([.top, .bottom, .leading, .trailing])
        .padding( .top, hasTopNotch ? 60 : 30)
        .onAppear {
            self.stateHolder.fetchPostPublisher.send(stateHolder.postId)
        }
        .alert("에러가 발생하였습니다.", isPresented: $stateHolder.showingAlert) {
            Button("OK", role: .cancel) {
                print("??")
            }
        }
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PostDetailView(postId: 6)
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
            PostDetailView(postId: 6)
                .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
        }
    }
}
