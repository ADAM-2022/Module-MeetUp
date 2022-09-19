//
//  PostDetailView.swift
//  Community
//
//  Created by Noah Park on 2022/09/17.
//

import SwiftUI

struct PostDetailView: View {
    let postId: Int?
    var body: some View {
        VStack(spacing: .zero) {
            PostDetailBackButton()
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            ScrollView {
                VStack(spacing: .zero) {
                    PostDetailTitleArea()
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 32, trailing: 0))
                    PostDetailInfoArea()
                        .padding(.bottom, 16)
                }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                PostDetailBodyArea()
                    .frame(minHeight: 160, alignment: .top)
            }
            
            Spacer()
        }
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea([.top, .bottom, .leading, .trailing])
        .padding( .top, hasTopNotch ? 60 : 30)
        
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
