//
//  SearchViewTitle.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/20.
//

import SwiftUI

struct SearchViewTitle: View {
    var body: some View {
        HStack(spacing: 8) {
            SearchBackButtonView()
            SearchBarView()
        }
        .padding(EdgeInsets(top: hasTopNotch ? 51 : 11, leading: 20, bottom: .zero, trailing: 20))
    }
}

struct SearchViewTitle_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewTitle()
    }
}
