//
//  FloatingButtonView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/18.
//

import SwiftUI

struct FloatingButtonView: View {
    var body: some View {
        Button {
            //FIXME: 버튼 눌렀을 시 글쓰기 뷰로
        } label: {
            Text("글쓰기")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .font(.callout)
                .padding(EdgeInsets(top: 16, leading: 44.5, bottom: 16, trailing: 44.5))
                .background(RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(.black))
        }
    }
}

struct FloatingButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FloatingButtonView()
    }
}
