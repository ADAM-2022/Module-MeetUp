//
//  RestaurantSegmentedPickerView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/11/19.
//

import SwiftUI

struct RestaurantSegmentedPickerView: View {
    //TODO: 추후 PostechMenuStateHolder 에서 값 전달 예정
    @Binding var selectedRestaurantNum: Int
    let pickerIndex: [String] = ["지곡회관","위즈덤","블루힐"]
    
    var body: some View {
        HStack(spacing: .zero) {
            ForEach(pickerIndex.indices, id:\.self) { restaurantNum in
                ZStack {
                    Rectangle()
                        .fill(.gray)
                    
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(.blue)
                        .opacity(selectedRestaurantNum == restaurantNum ? 1 : 0.00001)
                        .onTapGesture {
                            selectedRestaurantNum = restaurantNum
                        }
                }
                .overlay(
                    Text(pickerIndex[restaurantNum])
                        .font(.system(size: 16))
                        .fontWeight(selectedRestaurantNum == restaurantNum ? .bold : .medium)
                        .foregroundColor(selectedRestaurantNum == restaurantNum ? .white : .black)
                )
            }
            
        }
        .frame(width: 298, height: 39)
        .cornerRadius(30)
        .shadow(color: .black, radius: 0.1, x: .zero, y: .zero)
    }
}

struct RestaurantSegmentedPickerView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantSegmentedPickerView(selectedRestaurantNum: .constant(0))
    }
}
