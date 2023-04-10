//
//  TabViewAndPageTabViewStyleView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/04/05.
//

import SwiftUI

struct TabViewAndPageTabViewStyleView: View {
    
    @State var selectedTab: Int = 2
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeTab(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house")
                    Text("home")
                }
                .tag(1)
            
            Text("browse")
                .tabItem {
                    Image(systemName: "globe")
                    Text("browse")
                }
                .tag(2)
            
            Text("personal")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("profile")
                }
                .tag(3)
         }
        .tint(.black)
    }
}

struct HomeTab: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack{
            Color.red
                .edgesIgnoringSafeArea(.top)
            VStack {
                Text("home view")
                Button("go to the profile") {
                    selectedTab = 2
                }
            }
        }
    }
}


struct TabViewAndPageTabViewStyleView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewAndPageTabViewStyleView()
    }
}


