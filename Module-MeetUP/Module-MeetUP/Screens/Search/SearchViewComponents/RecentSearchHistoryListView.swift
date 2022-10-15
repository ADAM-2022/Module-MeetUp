//
//  ResentSearchListView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/20.
//

import SwiftUI

struct RecentSearchHistoryListView: View {
    @StateObject var searchStates: SearchStateHolder
    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            RecentSearchHistoryListTitleView(searchStates: searchStates)
            ForEach(searchStates.searchHistorys, id: \.self) { recentSearchHistory in
                RecentSearchHistoryCellView(recentHistory: recentSearchHistory)
            }
            Spacer()
        }
        .padding(EdgeInsets(top: 19, leading: .zero, bottom: .zero, trailing: .zero))

    }
}

struct RecentSearchHistoryListTitleView: View {
    @StateObject var searchStates: SearchStateHolder
    var body: some View {
        HStack(alignment:.top, spacing: .zero) {
            Text("최근 검색어")
                .font(.system(size: 18).bold())
            Spacer()
            //TODO: 분기처리 필요
            Button {
                searchStates.resetSearchHistorys()
            } label: {
                Text("전체 삭제")
                    .font(.callout)
                    .foregroundColor(.gray)
            }
        }
        .padding(EdgeInsets(top: .zero, leading: 20, bottom: 10, trailing: 20))
    }
}

struct RecentSearchHistoryCellView: View {
    
    let recentHistory: String
    
    var body: some View {
        VStack(spacing: .zero) {
            //TODO: Divider 공통 컴포넌트로 변경 예정
            Divider()
            HStack(alignment:.center, spacing: .zero) {
                Text(recentHistory)
                    .font(.callout)
                    .foregroundColor(.black)
                Spacer()
                Button {
                    //TODO: 최근 검색어 삭제
                } label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 17)
                        //.fontWeight(.light)
                        .foregroundColor(.gray)
                }

            }
            .padding(EdgeInsets(top: 13, leading: .zero, bottom: 12, trailing: .zero))
            Divider()
        }
        .padding(.horizontal, 20)
    }
}

struct RecentSearchListView_Previews: PreviewProvider {
    static var previews: some View {
        RecentSearchHistoryListView(searchStates: SearchStateHolder())
    }
}

