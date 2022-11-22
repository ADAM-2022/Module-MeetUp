//
//  MenuTimeSlotView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/11/23.
//

import SwiftUI

struct MenuTimeSlotView: View {
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: .zero) {
            Text("점심")
                .font(.system(size: 24))
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding(.trailing, 6)
            Text("11:50 - 13:00")
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
