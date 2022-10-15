//
//  SearchView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/20.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var searchStates: SearchStateHolder
    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            SearchViewTitle(searchStates: searchStates)
            RecentSearchHistoryListView(searchStates: searchStates)
            Spacer()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchStates: SearchStateHolder())
    }
}
