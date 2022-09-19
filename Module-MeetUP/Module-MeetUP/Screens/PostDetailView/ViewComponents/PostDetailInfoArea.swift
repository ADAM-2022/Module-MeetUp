//
//  PostDetailInfoArea.swift
//  Community
//
//  Created by Noah Park on 2022/09/17.
//

import SwiftUI

struct PostDetailInfoArea: View {
    var body: some View {
        VStack(spacing: .zero) {
            PostDetailWriterText()
                .padding(.bottom, 2)
            HStack(spacing: .zero) {
                PostDetailCreatedTimeText()
                    .padding(.trailing, 20)
                PostDetailViewCountText()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        
    }
}

struct PostDetailWriterText: View {
    var body: some View {
        Text("Sdaq")
            .font(.custom("Apple SD Gothic Neo", size: 17).bold())
            .frame(maxWidth: .infinity, alignment: .leading)
            .lineLimit(1)
    }
}

struct PostDetailCreatedTimeText: View {
    var body: some View {
        Text("2022.09.17 17:56")
            .font(.custom("Apple SD Gothic Neo", size: 16))
    }
}

struct PostDetailViewCountText: View {
    var body: some View {
        Text("조회수 50")
            .font(.custom("Apple SD Gothic Neo", size: 16))
    }
}

struct PostDetailInfoArea_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailInfoArea()
    }
}
