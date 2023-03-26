//
//  NavigationView4.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/23.
//

import SwiftUI

struct NavigationView4: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                Text("hello world")
                Text("hello world")
                Text("hello world")
                NavigationLink {
                    MyAnotherView()
                } label: {
                    Text("myAnotherView")
                }

            }
            .navigationTitle("dolo")
        }
    }
}

struct NavigationView4_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView4()
    }
}
