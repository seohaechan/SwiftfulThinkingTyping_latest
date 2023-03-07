//
//  ScrollViewView4.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/06.
//

import SwiftUI

struct ScrollViewView4: View {
    var body: some View {
        
        ScrollView{
            LazyVStack{
                ForEach(1..<100) { index in
                    ScrollView(.horizontal, showsIndicators: true) {
                        LazyHStack{
                            ForEach(0..<20){ index in
                                contentSquare
                            }
                        }
                    }
                }
            }
        }
        
        
    }
}

extension ScrollViewView4 {
    private var contentSquare: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 235, height: 100)
            .foregroundColor(Color(uiColor: .systemGray3))
            .shadow(color: .gray, radius: 15, x: 10, y: 10)
            .overlay {
                Text("horizontalVibe")
                    .font(.title)
                    .bold()
            }
            .frame(width: 255, height: 180)
            
    }
}


struct ScrollViewView4_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewView4()
    }
}
