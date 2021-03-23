//
//  gameViewModel.swift
//  nineNine
//
//  Created by gnss823 on 2021/3/23.
//

import Foundation

class GameViewModel: ObservableObject {
    @Published var sum: Int
    @Published var playerNum: Int
    @Published var players: [Player]
    @Published var cards: [Card]
    
    init(playerNum: Int) {
        self.sum = 0
        self.cards = initCards()
        self.playerNum = playerNum
        self.players = Array<Player>()
        for i in 0..<playerNum {
            self.players.append(Player(money: 1000, cardList: Array(cards[i*5..<(i+1)*5])))
        }
    }
    
    func playCard(view: cardView) {
        view.focus = true
        print("tt")
    }
}
