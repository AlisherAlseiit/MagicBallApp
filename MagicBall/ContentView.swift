//
//  ContentView.swift
//  MagicBall
//
//  Created by Алишер Алсейт on 20.10.2021.
//

import SwiftUI

struct ContentView: View {
    @State var randomInx = 1
    
        
    var body: some View {
        NavigationView {
            
            
            ZStack {
                
                Color("Background").edgesIgnoringSafeArea(.all)
                
                
                    
                    Image("ball\(randomInx)")
                        .resizable()
                        .scaledToFit()
                        .onTapGesture {
                            randomInx = getIndex()
                        }
                        .padding()
                    
                
            }
            .navigationBarTitle("Ask Me Anythink")
            
            
        }

    }
    
    func getIndex()->Int {
        
        let randomIndex = Int.random(in: 1..<6)
        return randomIndex
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
