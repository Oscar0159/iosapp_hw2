//
//  mainMenuView.swift
//  nineNine
//
//  Created by gnss823 on 2021/3/23.
//

import SwiftUI

struct mainMenuView: View {
    var body: some View {
        GeometryReader{ geometry in
            NavigationView{
                ZStack{
                    Image("Background")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                    VStack{
                        NavigationLink(
                            destination: gameView()
                                .navigationBarTitle("")
                                .navigationBarHidden(true),
                            label: {
                                Text("開始遊戲")
                                    .bold()
                                    .font(.title)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal, 20)
                                    .clipShape(Capsule())
                                    .foregroundColor(Color.white)
                                    .background(Color.red)
                                    .clipShape(Capsule())
                                    .padding(.top,200)
                            }
                        )
                        NavigationLink(
                            destination: descriptionView(),
                            label: {
                                Text("遊戲說明")
                                    .bold()
                                    .font(.title)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal, 20)
                                    .clipShape(Capsule())
                                    .foregroundColor(Color.white)
                                    .background(Color.black)
                                    .clipShape(Capsule())
                                    .padding(.top,10)
                            }
                        )
                    }
                    .navigationBarHidden(true)
                }
            }
        }
    }
}

struct mainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        mainMenuView()
            .previewLayout(.fixed(width: 844, height: 500))
    }
}
