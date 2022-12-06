//
//  PostDetailInfoArea.swift
//  Community
//
//  Created by Noah Park on 2022/09/17.
//

import SwiftUI

struct PostDetailInfoArea: View {
    let writerString: String?
    let createdTimeString: String?
    let viewCountNumber: Int?
    
    var body: some View {
        VStack(spacing: .zero) {
            PostDetailWriterText(writerString: writerString)
                .padding(.bottom, 2)
            HStack(spacing: .zero) {
                PostDetailCreatedTimeText(createdTimeString: createdTimeString)
                    .padding(.trailing, 20)
                PostDetailViewCountText(viewCountNumber: viewCountNumber)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        
    }
}

struct PostDetailWriterText: View {
    let writerString: String?
    
    var body: some View {
        Text("\(writerString ?? "")")
            .font(.custom("Apple SD Gothic Neo", size: 17).bold())
            .frame(maxWidth: .infinity, alignment: .leading)
            .lineLimit(1)
    }
}

struct PostDetailCreatedTimeText: View {
    let createdTimeString: String?
    
    var body: some View {
        Text("\(createdTimeString ?? "")")
            .font(.custom("Apple SD Gothic Neo", size: 16))
    }
}

struct PostDetailViewCountText: View {
    let viewCountNumber: Int?
    
    var body: some View {
        Text("조회수 \(viewCountNumber ?? 0)")
            .font(.custom("Apple SD Gothic Neo", size: 16))
    }
}

struct PostDetailInfoArea_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailInfoArea(writerString: "sdaq", createdTimeString: "2022.09.17 17:56", viewCountNumber: 50)
    }
}
