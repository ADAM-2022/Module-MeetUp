//
//  SearchBarView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/20.
//

import SwiftUI

struct SearchBarView: View {
    //TODO: 임시 텍스트필드 변수 변경 예정
    @StateObject var searchStates: SearchStateHolder
    var body: some View {
        HStack(spacing: .zero){
            Button {
                searchStates.updateSearchContent()
            } label: {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 18)
                    .foregroundColor(.gray)
            }
            .padding(.trailing, 9)
            TextField("찾고싶은 제목, 내용을 입력해주세요", text: $searchStates.searchContent)
                .font(.callout)
            Spacer()
            Button {
                searchStates.searchContent = ""
            } label: {
                Image(systemName: "x.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 18)
                    .foregroundColor(.gray)
            }

        }
        .padding(EdgeInsets(top: 12, leading: 22, bottom: 12, trailing: 12))
        .background(Color(.secondarySystemBackground))
        .cornerRadius(20)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchStates: SearchStateHolder())
    }
}
