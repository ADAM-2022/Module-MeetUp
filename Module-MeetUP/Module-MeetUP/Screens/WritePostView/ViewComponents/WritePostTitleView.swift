//
//  WritePostTitleView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2023/01/11.
//

import SwiftUI

struct WritePostTitleView: View {
    //TODO: 임시 타이틀 변수
    @State var postTitleText = ""
    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            TextField("제목을 적어주세요", text: $postTitleText)
                .font(Font.custom("Apple SD Gothic Neo", size: 24).bold())
                .padding(.bottom, 18)
            Divider()
        }
    }
}

struct WritePostTitleView_Previews: PreviewProvider {
    static var previews: some View {
        WritePostTitleView()
    }
}
