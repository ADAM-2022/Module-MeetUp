//
//  PostDetailView.swift
//  Community
//
//  Created by Noah Park on 2022/09/17.
//

import SwiftUI

var hasTopNotch: Bool {
    if #available(iOS 11.0, tvOS 11.0, *) {
        return UIApplication.shared.delegate?.window??.safeAreaInsets.top ?? 0 > 20
    }
    return false
}

struct PostDetailView: View {
    let postId: Int?
    var body: some View {
        VStack(spacing: .zero) {
            PostDetailBackButton()
                .padding(.leading, 10)
                .padding(.bottom, 10)
            ScrollView {
                VStack(spacing: .zero) {
                    PostDetailTitleArea()
                        .padding(.bottom, 32)
                        .padding(.top, 10)
                    PostDetailInfoArea()
                        .padding(.bottom, 16)
                }
                .padding(.trailing, 20)
                .padding(.leading, 20)
                PostDetailBodyArea()
                    .frame(minHeight: 160, alignment: .top)
            }
            
            Spacer()
        }
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea([.top, .bottom, .leading, .trailing])
        .padding( .top, hasTopNotch ? 60 : 30)
        
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PostDetailView(postId: 6)
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
            PostDetailView(postId: 6)
                .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
        }
    }
}
