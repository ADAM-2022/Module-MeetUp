//
//  MenuWeeklyCalendar.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/11/19.
//

import SwiftUI

struct MenuWeeklyCalendarView: View {
    //TODO: 후에 PostechMenuStateHolder.swift로 옮길 로직
    func getDateRange() -> [Date] {
        var dateRange: [Date] = []
        for addDate in 0..<7 {
            dateRange.append(Calendar.current.date(byAdding: .day, value: addDate, to: Date()) ?? Date())
        }
        return dateRange
    }
    var body: some View {
                HStack(alignment: .center, spacing: .zero) {
                    ForEach(getDateRange(), id: \.self) { date in
                        Button {
                            //TODO: 선택날짜 전달
                        } label: {
                            //TODO: DateFormatter 추가 후 전체 텍스트 변경 필요
                            VStack(spacing: 4) {
                                Text("일")
                                    .font(.system(size: 16))
                                    .fontWeight(.semibold)
                                    .foregroundColor(date == Date() ? .blue : .black)
                                Text("22")
                                    .font(.system(size: 12))
                                    .fontWeight(.bold)
                                    .foregroundColor(date == Date() ? .blue : .gray)
                            }
                            .padding(8)
                            .background(Capsule().strokeBorder(date == Date() ?  .blue : .clear))
                        }
                    }
                    .frame(width: (UIScreen.main.bounds.width - 40) / 7)
        }
    }
}

struct MenuWeeklyCalendarView_Previews: PreviewProvider {
    static var previews: some View {
        MenuWeeklyCalendarView()
    }
}