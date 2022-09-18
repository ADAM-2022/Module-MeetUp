//
//  PostRowView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/18.
//

import SwiftUI

//TODO: 색상 변경 필요
struct PostCellView: View {
    //TODO: 임시 게시글 정보
    let postTitle: String = "포스트 타이틀"
    let postWriter: String = "글쓴이"
    let postViews: Int = 100
    
    var body: some View {
        HStack(spacing: .zero) {
            VStack(alignment: .leading, spacing: 9) {
                Text(postTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .font(.callout)
                HStack(spacing: 10) {
                    Text(postWriter)
                    Text("•")
                    Text("조회수 \(postViews)")
                }
                .fontWeight(.semibold)
                .foregroundColor(.gray)
                .font(.callout)
            }
            Spacer()
            PostImageView()
                .padding(.trailing, 7)
            PostCommentView()
        }
        .padding(.horizontal, 20)
    }
}

struct PostCommentView: View {
    //TODO: 임시 댓글 수
    let commentCount: Int = 10
    
    var body: some View {
        VStack(spacing: 6) {
            Text("댓글")
                .fontWeight(.semibold)
                //.foregroundColor(.gray)
                .font(.caption)
            Text("\(commentCount)")
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .font(.callout)
        }
        .padding(EdgeInsets(top: 8, leading: 13, bottom: 10, trailing: 13))
        .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.gray))
    }
}

struct PostImageView: View {
    //TODO: 임시 이미지
    let postImage = "dummyImage"
    
    var body: some View {
        Image("dummyImage")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 57, height: 57)
            .cornerRadius(10)
    }
    
}

struct PostCellView_Previews: PreviewProvider {
    static var previews: some View {
        PostCellView()
    }
}
