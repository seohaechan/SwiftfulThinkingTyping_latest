//
//  NavitagionView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/23.
//

import SwiftUI

struct NavitagionView: View {
    var navigationViewTitle: String = "title"
    var body: some View {
        NavigationView{
            ScrollView{
                NavigationLink("Greeeen", destination: MyAnotherView())
                Text("hello")
                Text("hello")
                Text("hello")

            }
            .navigationTitle(navigationViewTitle)
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(false)
        }
    }
}
struct MyAnotherView: View {
    var body: some View {
        ZStack {
            Color.green
                .navigationTitle("green")
            NavigationLink("click me", destination: Text("ok").navigationTitle("OK!!!"))
        }
        .ignoresSafeArea()
    }
}
struct NavitagionView_Previews: PreviewProvider {
    static var previews: some View {
        NavitagionView()
        MyAnotherView()
    }
}
