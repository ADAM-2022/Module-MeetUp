//
//  PostDetailTitleArea.swift
//  Community
//
//  Created by Noah Park on 2022/09/17.
//

import SwiftUI

struct PostDetailTitleArea: View {
    var body: some View {
        HStack(spacing: .zero) {
            HStack(spacing: .zero) {
                PostDetailTitle()
                    .padding(.trailing, 10)
                PostDetailOptionButton()
            }
        }
    }
}

struct PostDetailTitle: View {
    var body: some View {
        Text("이번주 수요일 롯데마트 가실분? 아님 다음주?")
            .font(Font.custom("Apple SD Gothic Neo", size: 24).bold())
            .frame(maxWidth: .infinity, alignment: .leading)
//            .lineLimit(1)
    }
    
}

struct PostDetailOptionButton: View {
    var body: some View {
        Button {
            // TODO: 로직 구현
        } label: {
            Image(systemName: "ellipsis")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 18, height: 20)
                .rotationEffect(Angle(degrees: 90))
                .foregroundColor(.black)
        }
    }
}

struct PostDetailTitleArea_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailTitleArea()
    }
}
