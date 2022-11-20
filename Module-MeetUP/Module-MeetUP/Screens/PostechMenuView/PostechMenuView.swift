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
    
    var body: some View {
        VStack(spacing: .zero) {
            PostechMenuTitleView(selectedDate: $selectedDate)
                .padding(.bottom, 18)
            MenuWeeklyCalendarView(selectedDate: $selectedDate)
                .padding(.bottom, 18)
            Spacer()
            RestaurantSegmentedPickerView()
            
        }
    }
}

struct PostechMenuView_Previews: PreviewProvider {
    static var previews: some View {
        PostechMenuView()
    }
}
