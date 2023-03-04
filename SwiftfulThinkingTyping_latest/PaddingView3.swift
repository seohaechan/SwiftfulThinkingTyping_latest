//
//  PaddingView3.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/02.
//

import SwiftUI

struct PaddingView3: View {
    var body: some View {
        VStack{
            title
            caption
                .padding(.bottom, 7)
        }
        .padding(.top, 20)
        .background(
        RoundedRectangle(cornerRadius: 15)
            .fill(.white)
            .shadow(radius: 15, x: 10, y: 10)
            .padding(.leading)
            .padding(.trailing)
        )
        
    }
}

extension PaddingView3 {
    private var title: some View {
        Text("Title")
            .font(.largeTitle)
            .bold()
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading,30)
    }
}

extension PaddingView3 {
    private var title2: some View {
        HStack {
            Text("Title")
                .font(.largeTitle)
            .bold()
            .padding(.leading, 30)
            
            Spacer()
        }
    }
}


extension PaddingView3 {
    private var caption: some View {
        Text("""
     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    """)
        .padding(.leading, 30)
        .padding(.trailing, 30)
        .padding(.top, 10)
        .padding(.bottom, 15)
//        .background(.red)
        
        
    }
}


struct PaddingView3_Previews: PreviewProvider {
    static var previews: some View {
        PaddingView3()
    }
}
