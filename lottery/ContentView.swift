//
//  ContentView.swift
//  lottery
//
//  Created by Austin Gae on 9/5/22.
//

import SwiftUI

struct ContentView: View {
    @State private var credits = 1000
    @State private var leftSlot = "apple"
    @State private var middleSlot = "apple"
    @State private var rightSlot = "apple"
    @State private var gameStatus = ""
    
    @State private var isSpinButtonDisabled = false
    
    func randomlySelectFruits() {
        for i in 1...3 {
            let options = ["apple", "cherry", "star"]
            let randomIndex = Int.random(in: 0..<3)
            let selectedOption = options[randomIndex]
            
            if (i == 1) {
                leftSlot = selectedOption
            }
            else if (i == 2) {
                middleSlot = selectedOption
            }
            else if (i == 3) {
                rightSlot = selectedOption
            }
        }
    }
    
    func check(left: String, middle: String, right: String) {
        if (left == middle && left == right && middle == right) {
            credits = credits + 100
        }
        else {
            credits = credits - 25
            
            if (credits < 0) {
                gameStatus = "Game Over"
                isSpinButtonDisabled = true
            }
        }
    }
    
    var body: some View {
        VStack {
            Spacer()
            Text("Fruit Roll Lottery")
            Spacer()
            Text("Credits: " + String(credits))
            Spacer()
            HStack {
                Spacer()
                Image(leftSlot)               .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                
                Spacer()
                
                Image(middleSlot)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)

                Spacer()
                
                Image(rightSlot)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                Spacer()
            }
            
            Spacer()
            
            Button(action: {
                //randomly select the fruits for the three slots
                randomlySelectFruits()
                
                //check if the fruits in the three slots are equal. If equal, then +100 credits. If not equal, then -25 credits.
                check(left: leftSlot, middle: middleSlot, right: rightSlot)
            }, label: {
                Text("Spin")
            }).padding(.all, 16.0)
              .foregroundColor(.white)
              .background(.pink)
              .disabled(isSpinButtonDisabled)
            
            
            Spacer()
            
            Text(gameStatus)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
