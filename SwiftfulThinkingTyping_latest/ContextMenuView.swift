//
//  ContextMenuView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/29.
//

import SwiftUI

struct ContextMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Image(systemName: "house.fill")
                .font(.largeTitle)
            Text("My home")
                .font(.headline)
            Text("The best place to rest")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding()
        .background(Color.brown.cornerRadius(25))
        .shadow(radius: 5, x: 7, y: 7)
        .contextMenu {
            Button {
                
            } label: {
                Label("like button", image: "heart")
            }
            Button {
                
            } label: {
                HStack{
                    Text("touch me")
                    Image(systemName: "heart.fill")
                }
            }


        }
    }
}

struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuView()
    }
}
