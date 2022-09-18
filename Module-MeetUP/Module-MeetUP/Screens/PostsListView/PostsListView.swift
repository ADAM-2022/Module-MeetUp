//
//  PostsListView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/18.
//

import SwiftUI

struct PostsListView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
                VStack(alignment: .leading, spacing: .zero) {
                    PostsListTitleView()
                    ScrollView(showsIndicators: false) {
                    PopularPostsSectionView()
                    SectionDividerView()
                    TotalPostsSectionView()
                    Spacer()
                }
            }
            FloatingButtonView()
                .padding(EdgeInsets(top: .zero, leading: .zero, bottom: 44, trailing: 19))
        }
        .ignoresSafeArea()
    }
}

struct PostsListTitleView: View {
    var body: some View {
        HStack(alignment: .center, spacing: .zero) {
            BackButtonView()
            Spacer()
            Text("커뮤니티")
                .fontWeight(.bold)
                .foregroundColor(.black)
                .font(.title3)
            Spacer()
            SearchButton()
        }
        .padding(EdgeInsets(top: 60, leading: 20, bottom: 16, trailing: 20))
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
            ForEach(0 ..< 2, id: \.self) {postNum in
                PostCellView()
                if postNum < 1 {
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
            
            ForEach(0 ..< 10, id: \.self) {_ in
                PostCellView()
                Divider()
            }
        }
        
    }
}

struct PostsListView_Previews: PreviewProvider {
    static var previews: some View {
        PostsListView()
    }
}
