//
//  HowToExtractSubviews.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/06.
//

import SwiftUI

struct HowToExtractSubviews: View {
    
    
    var body: some View {
        VStack {
            ExtractedView()
        }
    }
}




struct HowToExtractSubviews_Previews: PreviewProvider {
    static var previews: some View {
        HowToExtractSubviews()
    }
}



struct ExtractedView: View {
    @State var anyVariable: String = ""
    
    var body: some View {
        Text(anyVariable)
            .font(.title)
            .fontWeight(.black)
            .frame(width: 300, height: 300)
            .background(Color.blue)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(.white)
            )
    }
}
