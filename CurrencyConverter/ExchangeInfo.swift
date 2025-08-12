//
//  ExchangeInfo.swift
//  CurrencyConverter
//
//  Created by Francis  German  on 2025-08-11.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        
        ZStack {
            
            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .background(.brown)
            
            VStack {
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .padding()
                    .font(.title3)
                    .foregroundColor(.black)
                HStack {
                    Image("goldpiece")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                Text("1 Gold Piece = 4 Gold Pennies")
                    Image("goldpenny")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }
                HStack {
                    Image("goldpenny")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                Text("1 Gold Penny = 4 Silver Pieces")
                    Image("silverpiece")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }
                HStack {
                    Image("silverpiece")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                Text("1 Silver Piece = 4 Silver Pennies")
                    Image("silverpenny")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }
                HStack {
                    Image("silverpenny")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                Text("1 Silver Penny = 100 Copper Pennies")
                    Image("copperpenny")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }
                Spacer()
                Button {
                    // Action to perform when the button is tapped
                    // For a "Back" button, this typically involves dismissing the current view
                    // or navigating back in a NavigationStack.
                } label: {
                    Text("DONE")
                        .foregroundStyle(.white)
                        .padding()
                        .background(Color.brown)
                        .clipShape(Capsule())
                        .font(.largeTitle)
                }
            }
        }
    }
}

#Preview {
    ExchangeInfo()
}
