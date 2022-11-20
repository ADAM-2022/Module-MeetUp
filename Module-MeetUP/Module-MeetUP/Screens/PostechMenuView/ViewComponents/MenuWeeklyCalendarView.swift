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
    //TODO: 후에 PostechMenuStateHolder의 변수로 교체 예정
    @Binding var selectedDate: Date
    var body: some View {
                HStack(alignment: .center, spacing: .zero) {
                    ForEach(getDateRange(), id: \.self) { date in
                        Button {
                            selectedDate = date
                        } label: {
                            //TODO: DateFormatter 추가 후 전체 텍스트 변경 필요
                            VStack(spacing: 4) {
                                Text("\(date.getDay())")
                                    .font(.system(size: 12))
                                    .fontWeight(date.getDate() == Date().getDate() ? .bold : .semibold)
                                    .foregroundColor(date.getDate() == Date().getDate() ? .blue : .gray)
                                Text("\(date.getDayOfWeekShort())")
                                    .font(.system(size: 16))
                                    .fontWeight(.semibold)
                                    .foregroundColor(date.getDate() == Date().getDate() ? .blue : .black)
                            }
                            .padding(8)
                            .background(Capsule().strokeBorder(date.getDate() == selectedDate.getDate() ?  .blue : .clear))
                        }
                    }
                    .frame(width: (UIScreen.main.bounds.width - 46) / 7)
        }
    }
}

struct MenuWeeklyCalendarView_Previews: PreviewProvider {
    static var previews: some View {
        MenuWeeklyCalendarView(selectedDate: .constant(Date()))
    }
}
