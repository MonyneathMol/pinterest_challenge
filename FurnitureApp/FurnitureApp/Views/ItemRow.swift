//
//  ItemVIews.swift
//  FurnitureApp
//
//  Created by Monyneath Mol on 23/4/22.
//

import SwiftUI

struct ItemRow: View {
    var furniture : Furniture
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 40,style: .continuous)
                .fill(Color.init(red: 220/255   , green: 225/255, blue: 236/255))
                .frame(width: 400, height: 300)
            
                
                Image("Chair")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 240)
            

            RoundedRectangle(cornerRadius: 50)
                .fill(Color.blue)
                .frame(width: 150, height: 40)
                
                
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(furniture: allFurniture[0])
    }
}
