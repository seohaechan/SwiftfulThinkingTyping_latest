//
//  TabViewAndPageTabStyleView4.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/04/05.
//

import SwiftUI

struct TabViewAndPageTabStyleView4: View {
    @State var selectedTab: Int = 2
    var body: some View {
        TabView(selection: $selectedTab) {
            ProfileTab(selectedTab: $selectedTab)
                .tag(1)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("profile")
                }
            
            MainTab()
                .tag(2)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("main")
                }
            
            SettingTab(selectedTab: $selectedTab)
                .tag(3)
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("setting")
                }
        }
        .tabViewStyle(.automatic)
    }
}

struct ProfileTab: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack{
            Color.red.opacity(0.3)
                .edgesIgnoringSafeArea(.top)
            VStack{
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .foregroundColor(.blue)
                Text("This is profile view")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.bottom, 30)
                Button {
                    selectedTab = 2
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 150, height: 70)
                        Text("Go to the home")
                            .foregroundColor(.white)
                    }
                }

            }
        }
    }
}

struct MainTab: View {
    var body: some View {
        VStack{
            Image(systemName: "house.fill")
                .resizable()
                .frame(width: 150, height: 150)
            Text("This is Main View")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.bottom, 30)
        }
    }
}

struct SettingTab: View {
    @Binding var selectedTab: Int
    var body: some View {
        VStack{
            Image(systemName: "gearshape.fill")
                .resizable()
                .frame(width: 150, height: 150)
            Text("This is Setting View")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.bottom, 30)
            Button {
                    selectedTab = 2
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 150, height: 70)
                        .foregroundColor(.blue)
                    Text("go to Main View")
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct TabViewAndPageTabStyleView4_Previews: PreviewProvider {
    static var previews: some View {
        TabViewAndPageTabStyleView4()
    }
}
