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
                
            }, label: {
                Text("Spin")
            }).padding(.all, 16.0)
              .foregroundColor(.white)
              .background(.pink)
            
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
