//
//  IntermediaryModels.swift
//  Restaurant
//
//  Created by 佐藤美佳 on 2020/05/21.
//  Copyright © 2020 Shohei Mizuno. All rights reserved.
//

import Foundation

struct Categories: Codable {
    let categories: [String]
}

struct PreparationTime: Codable {
    let prepTime: Int

    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
