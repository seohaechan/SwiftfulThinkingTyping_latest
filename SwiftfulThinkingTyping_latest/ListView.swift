//
//  ListView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/27.
//

import SwiftUI

struct ListView: View {
    @State var fruitArray: [String] = ["apple", "orange", "strawberry", "banana"]
    var body: some View {
        NavigationStack {
            List{
                Section(header: Text("fruits")){
                    ForEach(fruitArray, id: \.self){ fruitArray in Text(fruitArray)}
                } 
            }
            .navigationTitle(Text("fruit"))
            .navigationBarItems(leading: EditButton())
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
