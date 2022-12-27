//
//  PostechMenuView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/11/19.
//

import SwiftUI

struct PostechMenuView: View {
    
    @State var selectedRestaurantNum = 0
    @State var selectedDate = Date()
    
    func setMenuView() -> AnyView {
            switch selectedRestaurantNum {
            case 0:
                return AnyView ( JigokMenuView() )
            case 1:
                return AnyView ( WisdomMenuView() )
            case 2:
                return AnyView ( BluehillMenuView() )
            default:
                return AnyView ( WisdomMenuView() )
            }
        }
    
    var body: some View {
        VStack(spacing: .zero) {
            PostechMenuTitleView(selectedRestaurantNum: $selectedRestaurantNum, selectedDate: $selectedDate)
                .padding(.bottom, 18)
            MenuWeeklyCalendarView(selectedDate: $selectedDate)
                .padding(.bottom, 18)
            setMenuView()
            Spacer()
            RestaurantSegmentedPickerView(selectedRestaurantNum: $selectedRestaurantNum)
                .padding(.bottom, 56)
        }
    }
}

struct PostechMenuView_Previews: PreviewProvider {
    static var previews: some View {
        PostechMenuView()
    }
}
