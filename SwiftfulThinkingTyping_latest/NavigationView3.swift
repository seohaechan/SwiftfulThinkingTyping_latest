//
//  NavigationView3.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/23.
//

import SwiftUI

struct NavigationView3: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                Text("first")
                Text("second")
                Text("third")
                Text("fourth")
                Text("fifth")
                NavigationLink {
                    MyAnotherView()
                } label: {
                    Text("button")
                }

            }
        }
    }
}

struct NavigationView3_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView3()
    }
}
