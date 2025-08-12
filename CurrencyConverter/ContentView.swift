//
//  ContentView.swift
//  CurrencyConverter
//
//  Created by Francis  German  on 2025-08-09.
//

import SwiftUI

struct ContentView: View {
    @State var showCurrencyConverterInfo = false
    @State var leftAmount: String = ""
    @State var rightAmount: String = ""
    
    var body: some View {
       ZStack {
            // Background Image
           Image(.background)
               .resizable()
               .ignoresSafeArea()
           
           VStack {
               // Pony Image
               Image(.prancingpony)
                   .resizable()
                   .scaledToFit()
                   .frame(height: 200)
               
               // Currency Exchange Text
               Text("Currency Exchange")
                   .font(.largeTitle)
                   .fontWeight(.bold)
                   .foregroundColor(.white)
               
               // Conversion Section
               HStack {
                   // left Conversion
                   VStack {
                       HStack {
                           Image(.silverpiece)
                               .resizable()
                               .scaledToFit()
                               .frame(width: 50, height: 33)
                           Text("Silver Piece")
                               .fontWeight(.light)
                               .foregroundStyle(.white)
                       }
                       .padding(.bottom, -5)
                       TextField("Amount", text: $leftAmount)
                           .textFieldStyle(.roundedBorder)
                   }
                   // Equals sign from SF symbols
                   Image(systemName: "equal")
                       .font(.largeTitle)
                       .foregroundStyle(.white)
                       .symbolEffect(.pulse)
                   
                   // Right Conversion
                   VStack {
                       HStack {
                           Image(.goldpiece)
                               .resizable()
                               .scaledToFit()
                               .frame(width: 50,height: 33)
                           Text("Gold Piece")
                               .fontWeight(.light)
                               .font(.headline)
                               .foregroundStyle(.white)
                       }
                       .padding(.bottom, -5)
                       TextField("Amount", text: $rightAmount)
                           .textFieldStyle(.roundedBorder)
                           .multilineTextAlignment(.trailing)
                   }
               }
               .padding()
               .background(Color.black.opacity(0.5))
               .clipShape(Capsule())
               
               Spacer()
               Button {
                   showCurrencyConverterInfo.toggle()
               } label: {
                   Image(systemName: "info.circle.fill")
                       .padding(.leading, 300.0)
                       .font(.largeTitle)
                       .foregroundStyle(.white)
                       .symbolEffect(.pulse)
                   }
                   
               
               
           }
//           .padding(.bottom, 60.0)
//           .border(.blue )
        }
    }
}

#Preview {
    ContentView()
}
