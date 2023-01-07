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
                    .background(.white)
                List {
                    VStack(spacing: .zero) {
                        ForEach(0 ..< 10, id: \.self) { _ in
                            PostCell()
                            Divider()
                        }
                        Spacer()
                    }
                    .background(.white)
                }
                .listStyle(PlainListStyle())
                .refreshable {
                    //TODO: 새로고침 시 들어갈 로직
                }
                .onAppear {
                    UIRefreshControl.appearance().backgroundColor = .gray
                }
            }
            .ignoresSafeArea()
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
