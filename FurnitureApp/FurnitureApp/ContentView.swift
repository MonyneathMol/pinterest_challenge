//
//  ContentView.swift
//  FurnitureApp
//
//  Created by Monyneath Mol on 18/4/22.
//

import SwiftUI

struct ContentView: View {
    @State var textSearch: String = ""
    
    var body: some View {
        
        NavigationView {
            VStack{
                SearchTextField(textSearch: textSearch)
                
                Rectangle()
                    .frame(width: 300, height: 100, alignment: .top)
                    .foregroundColor(Color.red)
            }
            .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight,alignment: .top)
            
        }
        .ignoresSafeArea()
        
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func rectReader(_ binding: Binding<CGRect>, in space: CoordinateSpace) -> some View {
        self.background(GeometryReader { (geometry) -> AnyView in
            let rect = geometry.frame(in: space)
            DispatchQueue.main.async {
                binding.wrappedValue = rect
            }
            return AnyView(Rectangle().fill(Color.clear))
        })
    }
}
