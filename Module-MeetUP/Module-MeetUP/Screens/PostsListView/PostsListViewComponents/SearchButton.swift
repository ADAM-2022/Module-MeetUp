//
//  SearchButton.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/18.
//

import SwiftUI

struct SearchButton: View {
    var body: some View {
        Button {
            //FIXME: SearchView 연결 필요
        } label: {
            Image(systemName: "magnifyingglass")
                .font(.title3)
                .foregroundColor(.black)
        }

    }
}

struct SearchButton_Previews: PreviewProvider {
    static var previews: some View {
        SearchButton()
    }
}
