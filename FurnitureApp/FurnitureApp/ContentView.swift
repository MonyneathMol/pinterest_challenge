//
//  ContentView.swift
//  FurnitureApp
//
//  Created by Monyneath Mol on 18/4/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            Rectangle()
                .frame(width: 300, height: 100, alignment: .top)
                .foregroundColor(Color.red)
            
        }
        .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight)
        .foregroundColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
