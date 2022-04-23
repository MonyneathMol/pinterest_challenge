//
//  SearchTextField.swift
//  FurnitureApp
//
//  Created by Monyneath Mol on 23/4/22.
//

import SwiftUI

struct SearchTextField: View {
    @State var textSearch = ""
    @State private var bottomRect: CGRect = .zero
    
    var body: some View {
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
            )
    }
}

struct SearchTextField_Previews: PreviewProvider {
    static var previews: some View {
        SearchTextField()
    }
}
