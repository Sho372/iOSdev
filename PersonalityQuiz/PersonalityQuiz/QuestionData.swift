//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by user169300 on 2020/05/03.
//  Copyright © 2020 user169300. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var ansers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. Yu surroud yourself with the people you love and enjoy activities with your friends."
        case .cat:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
        case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy"
        case .turtle:
            return "You are wise beyound your years, and you focus on the details. Slow and steady wins the race."
        }
    }
}

