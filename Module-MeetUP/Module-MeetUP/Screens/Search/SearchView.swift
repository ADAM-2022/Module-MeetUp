//
//  SearchView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/20.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            SearchViewTitle()
            RecentSearchHistoryListView()
            Spacer()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
