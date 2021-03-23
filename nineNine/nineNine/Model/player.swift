//
//  player.swift
//  nineNine
//
//  Created by gnss823 on 2021/3/23.
//

import Foundation

struct Player : Identifiable {
    let id = UUID()
    var alive: Bool
    let money: Int
    let cardList: [Card]
    
    init(money: Int, cardList: [Card]) {
        self.alive = true
        self.money = money
        self.cardList = cardList
    }
}
