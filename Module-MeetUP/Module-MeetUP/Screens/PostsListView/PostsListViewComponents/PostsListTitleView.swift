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
            BackButtonView()
            Spacer()
            Text("커뮤니티")
                .fontWeight(.bold)
                .foregroundColor(.black)
                .font(.title3)
            Spacer()
            SearchButton()
        }
        .padding(EdgeInsets(top: hasTopNotch ? 60 : 30, leading: 20, bottom: 16, trailing: 20))
    }
}

struct PostsListTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PostsListTitleView()
    }
}
