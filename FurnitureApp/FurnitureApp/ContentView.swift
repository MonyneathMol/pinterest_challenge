//
//  ContentView.swift
//  FurnitureApp
//
//  Created by Monyneath Mol on 18/4/22.
//

import SwiftUI

struct ContentView: View {
    @State var textSearch: String = ""
    @State private var bottomRect: CGRect = .zero
    var body: some View {
        
        NavigationView {
            VStack{
                TextField("Searh here", text: $textSearch)
//                    .background(Color.blue)
//                    .cornerRadius(16)
                    .frame(width: .infinity, height: 30, alignment: .leading)
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                    .font(.headline)
                    
                    .overlay(
                        ZStack{
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                                .rectReader($bottomRect, in: .named("center"))
                             
    
                            
                            
                    
                            Image(uiImage: UIImage(systemName: "heart.fill")!)
                                .frame(width: 39, height: 39, alignment: .trailing)
                                .position(x: bottomRect.width - 39.0, y: bottomRect.height / 2)
                        }
                    ).background(RoundedRectangle(cornerRadius: 5).fill(Color.gray))
                    .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                    
                
                
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
