//
//  ListView.swift
//  DemoAssignment
//
//  Created by Neosoft on 06/11/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(ListData , id: \.name) { val in
                    
                    NavigationLink {
                        ListDetailsView(details: val)
                    } label: {
                        HStack{
                            Text("\(val.name)")
                            Spacer()
                            val.isfav ? Image(systemName: "star.fill") : Image(systemName: "star")
                            
                                
                        }
                    }
                    
                }
            }.navigationTitle("LandMark")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
