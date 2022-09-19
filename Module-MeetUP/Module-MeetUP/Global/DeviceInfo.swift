//
//  DeviceInfo.swift
//  Module-MeetUP
//
//  Created by Noah Park on 2022/09/19.
//

import UIKit

var hasTopNotch: Bool {
    if #available(iOS 11.0, tvOS 11.0, *) {
        return UIApplication.shared.delegate?.window??.safeAreaInsets.top ?? 0 > 20
    }
    return false
}
