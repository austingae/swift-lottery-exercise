//
//  ContentView.swift
//  lottery
//
//  Created by Austin Gae on 9/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Fruit Roll Lottery")
            Spacer()
            Text("Credits: 1000")
            Spacer()
            HStack {
                Spacer()
                Image("apple")                  .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 200)
                
                Spacer()
                
                Image("cherry")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 200)
                
                Spacer()
                
                Image("star")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 200)
                Spacer()
            }
            Button(action: {
                
            }, label: {
                Text("Spin")
            })
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
