//
//  ScrollViewView3.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/06.
//

import SwiftUI

struct ScrollViewView3: View {
    var body: some View {
        
        HStack{
            verticalScrollView
            verticalScrollView
        }
        
    }
}


extension ScrollViewView3 {
    private var contentSquare: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 200, height: 100)
            .foregroundColor(Color(uiColor: .systemGray5))
            .shadow(radius: 10, x: 10, y: 10)
            .frame(width: 250)
            .padding(.top, 20)
    }
}

extension ScrollViewView3 {
    private var verticalScrollView: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
                ForEach(1..<10) { index in
                    contentSquare
                }
            }
        }
        
    }
}

struct ScrollViewView3_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewView3()
    }
}
