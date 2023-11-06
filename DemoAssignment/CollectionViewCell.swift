//
//  CollectionViewCell.swift
//  DemoAssignment
//
//  Created by Neosoft on 06/11/23.
//

import SwiftUI

struct CollectionViewCell: View {
    var category : Category
    
    var body: some View {
        VStack{
            Text(category.Category)
                .frame(maxWidth: .infinity,alignment: .leading)
                .bold()
                .font(.system(size: 16))
                .padding(.top,5)
                
            ScrollView(.horizontal){
                LazyHGrid(rows: [GridItem(.flexible())]) {
                    ForEach(category.Data, id: \.title) { val in
                        VStack {
                            Image(val.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 155, height: 155)
                                .cornerRadius(10)
                            
                            Text(val.title)
                                .font(.caption)
                                .multilineTextAlignment(.center)
                                
                        }
                    }
                }
            }.frame(minHeight: 150)
        }
    }
}

struct CollectionViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionViewCell(category: categoryData.first!)
    }
}
