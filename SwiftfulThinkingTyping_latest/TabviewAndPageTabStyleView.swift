//
//  TabviewAndPageTabStyleView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root  on 2023/04/09.
//

import SwiftUI

struct TabviewAndPageTabStyleView: View {
    @State var selectedTab: Int = 2
    var body: some View {
        TabView(selection: $selectedTab) {
            
            ProfileTab(selectedTab: $selectedTab)
                .tag(1)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("profile")
                }
            
            HomeTab(selectedTab: $selectedTab)
                .tag(2)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("home")
                }
            
            SettingTab(selectedTab: $selectedTab)
                .tag(3)
                .tabItem {
                    Image("gear.fill")
                }
            
        }
            .tint(.red)
    }
}




struct TabviewAndPageTabStyleView_Previews: PreviewProvider {
    static var previews: some View {
        TabviewAndPageTabStyleView()
    }
}
