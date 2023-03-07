//
//  HowToExtractSubviews2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root  on 2023/03/07.
//

import SwiftUI

struct HowToExtractSubviews2: View {
    
    
    
    var body: some View {
        
        VStack{
            Text("Hello, World!")
            ExtractingExample(squareColor: .orange)
        }
    }
}

struct HowToExtractSubviews2_Previews: PreviewProvider {
    static var previews: some View {
        HowToExtractSubviews2()
    }
}


struct ExtractingExample: View {
    
    let squareColor: Color
    
    init(squareColor: Color) {
        self.squareColor = squareColor
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 300, height: 150)
            .foregroundColor(squareColor)
            .shadow(color: squareColor, radius: 5, x: 5, y: 5)
    }
}
