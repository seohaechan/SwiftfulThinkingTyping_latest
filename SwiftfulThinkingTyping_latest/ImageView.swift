//
//  ImageView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/01.
//

import SwiftUI


struct ImageView: View {
    var body: some View {
        VStack{
            
            Image("SquaredKirby")
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .padding()
            
            Image("Darwin")
//                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
            /* aspectRatio를 frame 뒤에 쓰게 된다면 수정자가 적용되지 않는 것 같음.*/
//                .aspectRatio( contentMode: .fill)
                .padding()
            
        }
        
        VStack {
            
            Image("Darwin2")
                .renderingMode(.template)
                .resizable()
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(25)
                .padding(.bottom, 40)
                
            
        }
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
