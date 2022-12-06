//
//  PostDetailBodyArea.swift
//  Community
//
//  Created by Noah Park on 2022/09/18.
//

import SwiftUI

struct PostDetailBodyArea: View {
    @ObservedObject var stateHolder: PostDetailStateHolder
    
    var body: some View {
        VStack(spacing: .zero) {
            Rectangle()
                .frame(height: 1)
                .opacity(0.1)
                .padding(.bottom, 20)
            PostDetailBodyText(bodyString: stateHolder.postDetail?.body)
                .font(Font.custom("Apple SD Gothic Neo", size: 16))
                .lineSpacing(5)
                .padding(.bottom, 20)
            PostDetailImages(imageStrings: stateHolder.postDetail?.images)
                .padding(EdgeInsets(top: 0, leading: -20, bottom: 20, trailing: -20))
            Rectangle()
                .frame(height: 1)
                .opacity(0.1)
        }
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
    }
    
}

struct PostDetailBodyText: View {
    let bodyString: String?
    var body: some View {
        Text(bodyString ?? "")
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct PostDetailImages: View {
    let imageStrings: [String]?
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 5) {
                
                
//                Image("example")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .foregroundColor(.gray)
//                    .frame(width: 300)
//                Image("example")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .foregroundColor(.gray)
//                    .frame(width: 300)
//                Image("example")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .foregroundColor(.gray)
//                    .frame(width: 300)
            }
            .padding(.leading, 20)
        }
    }
}

struct PostDetailBodyArea_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailBodyArea(stateHolder: PostDetailStateHolder(postId: 1))
    }
}
