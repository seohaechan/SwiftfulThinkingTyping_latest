//
//  TabViewAndPageTabViewStyleView2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/04/05.
//

import SwiftUI

struct TabViewAndPageTabViewStyleView2: View {
    @State var selectedTab: Int = 2
    var body: some View {
        TabView(selection: $selectedTab) {
            //tab one
            ZStack {
                Color.red
                    .edgesIgnoringSafeArea(.top)
                VStack{
                    Text("This is profile")
                    Button {
                        selectedTab = 2
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 100, height: 70)
                                .foregroundColor(.white)
                            Text("go to home")
                        }
                    }

                }
            }
            .tabItem {
                Image(systemName: "person")
                
            }
            .tag(1)
            
            //tab two
            ZStack{
                Color.blue
                    .edgesIgnoringSafeArea(.top)
                VStack{
                    Text("This is home")
                }
            }
            .tabItem {
                Image(systemName: "house.fill")
            }
            .tag(2)
            
            //tab three
            ZStack{
                Color.purple
                    .edgesIgnoringSafeArea(.top)
                VStack{
                    Text("this is picture view")
                }
            }
            .tabItem {
                Image(systemName: "tray.fill")
            }
            .tag(3)
            
            
            
        }
        .tint(.red)
    }
}

struct TabViewAndPageTabViewStyleView2_Previews: PreviewProvider {
    static var previews: some View {
        TabViewAndPageTabViewStyleView2()
    }
}
