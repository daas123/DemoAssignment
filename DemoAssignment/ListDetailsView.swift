//
//  ListDetailsView.swift
//  DemoAssignment
//
//  Created by Neosoft on 06/11/23.
//

import SwiftUI
struct ListDetailsView: View {
    var details : listDetails?
    var body: some View {
        ScrollView {
            ZStack {
                VStack {
                    Image("Map")
                        .resizable()
                        .frame(maxHeight: UIScreen.main.bounds.height / 2)
                        .frame(maxWidth: .infinity)
                        .scaledToFill()
                        .clipped()
                    
                    Text(details?.name ?? "No value")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .bold()
                        .font(.title)
                        .padding(.top, 50)
                        .padding(.leading, 10)
                    
                    HStack {
                        Text(details?.name ?? "No value")
                            .foregroundColor(Color.gray)
                        Spacer()
                        Text("Mumbai")
                            .foregroundColor(Color.gray)
                    }
                    .padding(.horizontal, 10)
                    
                    Text(details?.name ?? "No Val")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .bold()
                        .padding(.leading, 10)
                    
                    Text(details?.des ?? "No desc")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)
                }
                
                VStack {
                    Image(details?.name ?? "main")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                        .padding(.top ,200)
                }
            }
        }
        .ignoresSafeArea()
    }
}



struct ListDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailsView()
    }
}
