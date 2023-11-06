//
//  CategoryView.swift
//  DemoAssignment
//
//  Created by Neosoft on 06/11/23.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        NavigationView {
                List{
                    Image("main")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 200)
                        .clipped()
                    ForEach(categoryData , id: \.Category){
                        val in
                        CollectionViewCell(category: val)
                    }
                }.navigationTitle("Featured")
                .background(ColorConstant.primaryBackground)
                .listStyle(PlainListStyle())
            }
                
        
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
