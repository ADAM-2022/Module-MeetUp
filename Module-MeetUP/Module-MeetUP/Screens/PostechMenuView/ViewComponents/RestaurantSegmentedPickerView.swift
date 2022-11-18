//
//  RestaurantSegmentedPickerView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/11/19.
//

import SwiftUI

struct RestaurantSegmentedPickerView: View {
    //TODO: 추후 PostechMenuView 에서 값 전달 예정
    var selectedRestaurantIndex: Int = 0
    let pickerIndex: [String] = ["지곡회관","위즈덤","블루힐"]
    
    var body: some View {
        HStack(spacing: .zero) {
            ForEach(pickerIndex.indices, id:\.self) { restaurantIndex in
                ZStack {
                    Rectangle()
                        .fill(.gray)
                    
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(.blue)
                        .opacity(selectedRestaurantIndex == restaurantIndex ? 1 : 0.00001)
                        .onTapGesture {
                            //TODO: PostechMenuView 의 값을 바꿔주면서 피커를 이동시킬 제스처
                        }
                }
                .overlay(
                    Text(pickerIndex[restaurantIndex])
                        .font(.system(size: 16))
                        .fontWeight(selectedRestaurantIndex == restaurantIndex ? .bold : .medium)
                        .foregroundColor(selectedRestaurantIndex == restaurantIndex ? .white : .black)
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
        RestaurantSegmentedPickerView()
    }
}
