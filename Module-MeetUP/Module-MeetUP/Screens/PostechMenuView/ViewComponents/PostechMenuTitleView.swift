//
//  PostechMenuTitleView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/11/19.
//

import SwiftUI

struct PostechMenuTitleView: View {
    //TODO: 선택된 날짜 및 식당 인덱스 메인뷰에서의 바인딩 필요
    @Binding var selectedRestaurantNum: Int
    @Binding var selectedDate: Date
    
    func setRestaurantTitle() -> String {
        switch selectedRestaurantNum {
        case 0:
            return "지곡회관"
        case 1:
            return "위즈덤"
        case 2:
            return "블루힐"
        default:
            return "지곡회관"
        }
    }
    
    var body: some View {
        Text("\(setRestaurantTitle()) \(selectedDate.getMonthAndDayKor()) \(selectedDate.getDayOfWeek())")
            .font(.callout)
            .foregroundColor(.black)
            .padding(EdgeInsets(top: 11, leading: 68, bottom: 10, trailing: 69))
            .background(RoundedRectangle(cornerRadius: 50)
                .foregroundColor(.black)
                .opacity(0.05))
    }
}

struct PostechMenuTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PostechMenuTitleView(selectedRestaurantNum: .constant(0), selectedDate: .constant(Date()))
    }
}
