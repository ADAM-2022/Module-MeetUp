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
            MenuTimeSlotView()
            //TODO: 식단뷰
            .padding(.bottom ,18)
        }
        .padding(.all, 20)
        .overlay(menuCard())
        .padding(.horizontal, 16)
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
