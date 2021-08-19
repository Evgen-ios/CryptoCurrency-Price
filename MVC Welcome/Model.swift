//
//  Model.swift
//  Model
//
//  Created by Evgeniy Goncharov on 18.08.2021.
//

import Foundation
import UIKit

struct Meal {
    var name: String
    var photo: UIImage
    var notes: String
    var rating: Int
    var timestamp: Date
}

 //MARK: -  Data Representaion
extension Meal {
    var stars: String {
        String(repeating: "⭐️", count: rating)
    }
    
    var formatedTimeStamp: String {     
        let format = DateFormatter()
        format.dateStyle = .short
        format.timeStyle = .short
        format.locale = Locale.current
        return format.string(from: timestamp)
    }
}

//
extension Meal {
    static var all: [Meal] {
        return [
            Meal(name: "Яблоки", photo: UIImage(named: "apple")!, notes: "Красные яблоки", rating: 5, timestamp: Date()),
            Meal(name: "Груши", photo: UIImage(named: "pear")!, notes: "Сочная груша", rating: 10, timestamp: Date()),
            Meal(name: "Бананы", photo: UIImage(named: "banana")!, notes: "Бананы черные", rating: 3, timestamp: Date()),
            Meal(name: "Арбузы", photo: UIImage(named: "whatemelon")!, notes: "Арбуз узбекистан", rating: 2, timestamp: Date()),
            Meal(name: "Дыни", photo: UIImage(named: "melon")!, notes: "Дыня торпеда", rating: 7, timestamp: Date()),
        ]
    }
}
