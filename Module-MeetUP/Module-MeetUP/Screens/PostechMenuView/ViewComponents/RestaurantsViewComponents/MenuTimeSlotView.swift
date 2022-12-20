//
//  MenuTimeSlotView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/11/23.
//

import SwiftUI

struct MenuTimeSlotView: View {
    private let timeSlot: [(String, String)] = [("아침", "07:30 - 09:30"), ("점심", "11:30 - 13:30"), ("저녁", "17:30 - 19:00")]
    
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: .zero) {
            Text(timeSlot[0].0)
                .font(.system(size: 24))
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding(.trailing, 6)
            Text(timeSlot[0].1)
                .font(.system(size: 14))
                .foregroundColor(.blue)
            Spacer()
        }
    }
}

struct MenuTimeSlotView_Previews: PreviewProvider {
    static var previews: some View {
        MenuTimeSlotView()
    }
}
