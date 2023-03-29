//
//  ContextMenu2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/29.
//

import SwiftUI

struct ContextMenu2: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 10){
                Image(systemName: "person.fill")
                    .font(.largeTitle)
                Text("Person")
                    .font(.headline)
                Text("Private information")
                    .font(.subheadline)
            }
            .foregroundColor(.white)
            .padding(.all, 20)
            .background(Color.black.cornerRadius(20))
            .contextMenu {
                Label("like", systemImage: "heart.fill")
                Label("report this post", systemImage: "exclamationmark.bubble.fill")
        }
            .navigationTitle(Text("title"))
        }
        
    }
}

struct ContextMenu2_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu2()
    }
}
