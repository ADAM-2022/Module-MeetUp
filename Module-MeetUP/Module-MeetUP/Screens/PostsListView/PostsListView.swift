//
//  PostsListView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/18.
//

import SwiftUI

struct PostsListView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            PostsListTitleView()
            RefreshableScrollView(onRefresh: { refrashDone in
                //TODO: 새로고침될 항목 들어갈 부분
                refrashDone()
            }) {
                VStack(spacing: .zero) {
                    PopularPostsSectionView()
                    SectionDividerView()
                    TotalPostsSectionView()
                    Spacer()
                }
            }
        }
        .ignoresSafeArea()
    }
}

//TODO: ForEach문 전부 변경 필요
struct PopularPostsSectionView: View {
    var body: some View {
        VStack(alignment:.leading, spacing: .zero) {
            Text("인기 게시글")
                .fontWeight(.bold)
                .foregroundColor(.black)
                .font(.system(size: 18))
                .padding(EdgeInsets(top: 16, leading: 20, bottom: 9, trailing: 20))
            ForEach(0 ..< 2, id: \.self) { postNum in
                PostCell()
                if postNum < 1 {
                    //TODO: 공통 Divider 컴포넌트로 교체 예정
                    Divider()
                }
            }
        }
    }
}

struct TotalPostsSectionView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            Text("전체 게시글")
                .fontWeight(.bold)
                .foregroundColor(.black)
                .font(.system(size: 18))
                .padding(EdgeInsets(top: .zero, leading: 20, bottom: 9, trailing: 20))
            
            ForEach(0 ..< 10, id: \.self) { _ in
                PostCell()
                Divider()
            }
        }
        
    }
}

struct PostsListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PostsListView()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
            PostsListView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
        }
    }
}
