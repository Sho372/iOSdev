//
//  Order.swift
//  Restaurant
//
//  Created by 佐藤美佳 on 2020/05/21.
//  Copyright © 2020 Shohei Mizuno. All rights reserved.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]

    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
