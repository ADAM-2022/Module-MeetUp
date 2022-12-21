//
//  JigokMenuView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/11/19.
//

import SwiftUI

struct JigokMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            ForEach(0...2, id:\.self) {i in
                VStack(alignment: .leading) {
                    MenuTimeSlotView(timeSlotIndex: i)
                        .padding(.bottom ,18)
                    //TODO: 추후 API 연결 예정
                    Text("식단 준비중 입니다")
                        .font(.callout)
                        .foregroundColor(.black)
                }
                .padding(.all, 20)
                .overlay(menuCard())
                .padding(.horizontal, 16)
            }
            .padding(.bottom, 12)

        }

    }
}

private extension JigokMenuView {
    @ViewBuilder
    func menuCard() -> some View {
        RoundedRectangle(cornerRadius: 10)
            .strokeBorder(.black, lineWidth: 1).opacity(0.1)
    }
}

struct JigokMenuView_Previews: PreviewProvider {
    static var previews: some View {
        JigokMenuView()
    }
}
