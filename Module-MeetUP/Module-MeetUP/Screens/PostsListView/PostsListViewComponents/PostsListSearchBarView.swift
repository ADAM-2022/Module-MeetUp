//
//  PostsListSearchBarView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/10/08.
//

import SwiftUI

struct PostsListSearchBarView: View {
    var body: some View {
        HStack(spacing: .zero){
            
            Text("찾고싶은 제목, 내용을 입력해주세요")
                .font(.callout)
                .foregroundColor(.gray)
            Spacer()
            
            Image(systemName: "magnifyingglass")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 18)
                .foregroundColor(.gray)
        }
        .padding(EdgeInsets(top: 12, leading: 18, bottom: 11, trailing: 14))
        .background(Color(.secondarySystemBackground))
        .cornerRadius(20)
        .onTapGesture {
            //TODO: 검색화면 이동 로직으로 변경 예정
            print("검색화면으로 이동")
        }
    }
}

struct PostsListSearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        PostsListSearchBarView()
    }
}
