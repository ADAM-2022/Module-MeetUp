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
            if searchStates._searchHistorys != [] {
                ForEach(0 ..< searchStates.searchHistorys.count, id: \.self) { recentSearchHistoryIndex in
                    RecentSearchHistoryCell(searchStates: searchStates, recentHistory: searchStates.searchHistorys[recentSearchHistoryIndex], recentHistoryIndex: recentSearchHistoryIndex)
                }
            }
            else {
                NoneRecentSearchHistorysView()
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
            if searchStates._searchHistorys != [] {
                Button {
                    searchStates.resetSearchHistorys()
                } label: {
                    Text("전체 삭제")
                        .font(.callout)
                        .foregroundColor(.gray)
                }
            }
        }
        .padding(EdgeInsets(top: .zero, leading: 20, bottom: 10, trailing: 20))
    }
}

struct NoneRecentSearchHistorysView: View {
    var body: some View {
        VStack(spacing:. zero) {
            Divider()
                .padding(EdgeInsets(top: 7, leading: 20, bottom: 23, trailing: 20))
            Text("최근 검색 항목이 존재하지 않습니다.")
                .font(.callout)
        }
    }
}

struct RecentSearchHistoryCell: View {
    
    @StateObject var searchStates: SearchStateHolder
    let recentHistory: String
    let recentHistoryIndex: Int
    
    var body: some View {
        VStack(spacing: .zero) {
            //TODO: Divider 공통 컴포넌트로 변경 예정
            //Divider()
            HStack(alignment:.center, spacing: .zero) {
                Text(recentHistory)
                    .font(.callout)
                    .foregroundColor(.black)
                Spacer()
                Button {
                    searchStates._searchHistorys.remove(at: recentHistoryIndex)
                } label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 17)
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

