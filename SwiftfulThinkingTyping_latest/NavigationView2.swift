//
//  NavigationView2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/23.
//

import SwiftUI

struct NavigationView2: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                Text("hello")
                NavigationLink {
                    MyAnotherView()
                } label: {
                    Text("this is green page")
                        .tint(.green)
                }

            }
            .navigationTitle("All Inboxes")
        }
    }
}

struct NavigationView2_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView2()
    }
}
