//
//  PostsListTitleView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/18.
//

import SwiftUI

struct PostsListTitleView: View {
    var body: some View {
        HStack(alignment: .center, spacing: .zero) {
            PostsListSearchBarView()
                .padding(.trailing, 12)
            WriteButtonView()
        }
        .padding(EdgeInsets(top: hasTopNotch ? 30 : 60, leading: 20, bottom: 16, trailing: 20))
    }
}

struct PostsListTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PostsListTitleView()
    }
}


