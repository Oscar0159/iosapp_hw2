//
//  card.swift
//  nineNine
//
//  Created by gnss823 on 2021/3/23.
//

import Foundation

let suits = ["clubs", "diamonds", "hearts", "spades"]
let ranks = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"]

struct Card : Identifiable, Hashable{
    let id = UUID()
    let suit: String
    let rank: String
}

func initCards() -> Array<Card>{
    var cards = Array<Card>()
    for i in 0...51{
        let c = Card(suit: suits[i % 4], rank: ranks[i % 13])
        cards.append(c)
    }
    return cards
}

func licensing(playerNum:Int) -> Array<Array<Card>> {
    let cards = initCards().shuffled()
    var playerCards = [Array<Card>(),Array<Card>(),Array<Card>(),Array<Card>()]
    
    for i in 0...52 - 1 {
        playerCards[i % playerNum].append(cards[i])
    }
    
    return playerCards
}
