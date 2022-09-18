//
//  PostDetailBodyArea.swift
//  Community
//
//  Created by Noah Park on 2022/09/18.
//

import SwiftUI

struct PostDetailBodyArea: View {
    var body: some View {
        VStack(spacing: .zero) {
            Rectangle()
                .frame(height: 1)
                .opacity(0.1)
                .padding(.bottom, 20)
            PostDetailBodyText()
                .font(Font.custom("Apple SD Gothic Neo", size: 16))
                .lineSpacing(5)
                .padding(.bottom, 20)
            PostDetailImages()
                .padding(.bottom, 20)
                .padding(.leading, -20)
                .padding(.trailing, -20)
            Rectangle()
                .frame(height: 1)
                .opacity(0.1)
        }
        .padding(.trailing, 20)
        .padding(.leading, 20)
    }
    
}

struct PostDetailBodyText: View {
    var body: some View {
        Text("포딩 차 타고 갈거라 같이 가실 2-3분 모집합니다~\n생각 있으시면 댓글 남겨주세요!\n아마 저녁 8시에 갈 것 같아요!")
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct PostDetailImages: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 5) {
                Image("example")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.gray)
                    .frame(width: 300)
                Image("example")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.gray)
                    .frame(width: 300)
                Image("example")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.gray)
                    .frame(width: 300)
            }
            .padding(.leading, 20)
        }
    }
}

struct PostDetailBodyArea_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailBodyArea()
    }
}
