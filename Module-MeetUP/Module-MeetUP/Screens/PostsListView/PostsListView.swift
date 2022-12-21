//
//  PostsListView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/18.
//

import SwiftUI

struct PostsListView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.gray)
                .frame(width: .infinity, height: .infinity)
            VStack(alignment: .leading, spacing: .zero) {
                PostsListTitleView()
                    .background(.white)
                RefreshableScrollView(onRefresh: { refreshDone in
                    //TODO: 새로고침될 항목 들어갈 부분
                    refreshDone()
                }) {
                    VStack(spacing: .zero) {
                        ForEach(0 ..< 10, id: \.self) { _ in
                            PostCell()
                            Divider()
                        }
                        Spacer()
                    }
                    .background(.white)
                }
            }
            .ignoresSafeArea()
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
