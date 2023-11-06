//
//  Homeview.swift
//  DemoAssignment
//
//  Created by Neosoft on 06/11/23.
//

import SwiftUI

struct Homeview: View {
    @State var selectedTab : Tab = .Featured
    
    enum Tab{
        case Featured
        case List
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            CategoryView()
                .tabItem{
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.Featured)
            
            ListView()
                .tabItem{
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.List)
        }
    }
}

struct Homeview_Previews: PreviewProvider {
    static var previews: some View {
        Homeview()
    }
}
