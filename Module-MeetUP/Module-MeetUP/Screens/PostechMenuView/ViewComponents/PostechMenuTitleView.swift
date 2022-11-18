//
//  PostechMenuTitleView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/11/19.
//

import SwiftUI

struct PostechMenuTitleView: View {
    var selectedRestaurantIndex: Int = 0
    var selectedDate: String = "0월0일 일요일"
    
    func setRestaurantTitle() -> String {
        switch selectedRestaurantIndex {
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
        Text("\(setRestaurantTitle()) \(selectedDate)")
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
        PostechMenuTitleView()
    }
}
