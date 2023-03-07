//
//  ScrollViewView2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/06.
//

import SwiftUI

struct ScrollViewView2: View {
    var body: some View {
        
        VStack(){
            ScrollView(){
                ForEach(1..<10) { index in
                    
                    contentRectangle
                        .padding()
                    
                    
                }
            }
        }
        

    }
}

extension ScrollViewView2 {
    private var contentRectangle: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 200, height: 100)
            .foregroundColor(Color(uiColor: .systemGray5))
            .shadow(radius: 15, x: 10, y: 10)
    }
}


struct ScrollViewView2_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewView2()
    }
}
