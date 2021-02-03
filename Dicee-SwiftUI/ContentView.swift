//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by User on 11/14/20.
//  Copyright © 2020 huseynova. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var lDicee = 1
    @State  var rDicee = 1
    var body: some View {
        VStack {
            ZStack {
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("diceeLogo")
                    Spacer()
                    HStack {
                        DiceeView(n: lDicee)
                        DiceeView(n: rDicee)
                    }
                .padding()
                    
                    Spacer()
                    
                    Button(action: {
                        self.lDicee = Int.random(in: 1...6)
                        self.rDicee = Int.random(in: 1...6)
                        
                    }) {
                        Text("Roll")
                            .font(.system(size: 50))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                .padding()
                    .background(Color.red)
                }
                
                
                
            }
        }
        
    }
    
}
struct DiceeView: View {
    
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

