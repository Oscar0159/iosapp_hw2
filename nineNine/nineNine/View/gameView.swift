//
//  gameView.swift
//  nineNine
//
//  Created by gnss823 on 2021/3/22.
//

import SwiftUI

let PlayerPostion = [[0, 150], [300, 0], [0, -150], [-300, 0]]
let direction = ["h", "v"]
struct gameView: View {
    
    @State var gameViewModel = GameViewModel(playerNum: 4)
    
    var body: some View {
        ZStack{
            Image("Background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            ForEach(0..<gameViewModel.playerNum){ i in
                cardListView(gameViewModel: self.$gameViewModel, cards: gameViewModel.players[i].cardList, selectedcard: Card(suit: "", rank: ""), hidden: i>0, direction: direction[i%2])
                    .offset(x:CGFloat(PlayerPostion[i][0]), y:CGFloat(PlayerPostion[i][1]))
            }
        }
    }
}



struct gameView_Previews: PreviewProvider {
    static var previews: some View {
        gameView()
            .previewLayout(.fixed(width: 844, height: 500))
    }
}
