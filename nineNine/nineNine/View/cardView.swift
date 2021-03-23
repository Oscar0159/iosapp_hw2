//
//  cardView.swift
//  nineNine
//
//  Created by gnss823 on 2021/3/23.
//

import SwiftUI


struct cardView: View {
    @Binding var gameViewModel: GameViewModel
    @State var focus: Bool
    @State var hidden: Bool
    @State var card: Card
    
    var body: some View {
        Button(action: {gameViewModel.playCard(view: self)}){
            if(hidden){
                Image("back")
                    .resizable()
                    .frame(width:50, height: 70, alignment: .center)
            }
            else{
                Image("\(card.rank)_of_\(card.suit)")
                    .resizable()
                    .frame(width: 50, height: 70, alignment: .center)
            }
        }
    }
}

struct cardListView: View{
    @Binding var gameViewModel: GameViewModel
    @State var cards: Array<Card>
    @State var selectedcard: Card
    @State var hidden: Bool
    let direction: String
    //@State var selected = card(num: 0, suits: "", id: -1)
    //@State var focus = false
    var body: some View{
        if(direction == "h"){
            HStack(spacing:30){
                ForEach(0..<cards.count){ (i) in
                    cardView(gameViewModel: self.$gameViewModel, focus: false, hidden:hidden, card:cards[i])
                }
            }
        }
        else{
            VStack(spacing:0){
                ForEach(0..<cards.count){ (i) in
                    cardView(gameViewModel: self.$gameViewModel, focus: false, hidden:hidden, card:cards[i])
                        .rotationEffect(.degrees(90))
                }
            }
        }
    }
}

//
//struct cardView_Previews: PreviewProvider {
//    static var previews: some View {
//        cardView(hidden: false, card: Card(suit: "clubs", rank: "10"))
//        cardListView(cards: licensing(playerNum: 4)[0], selectedcard: Card(suit: "", rank: ""), hidden: false, direction: "h")
//            .previewLayout(.fixed(width: 844, height: 500))
//    }
//}
