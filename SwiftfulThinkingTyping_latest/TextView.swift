//
//  TextView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/02/22.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        
        VStack{
            Text("Swift")
                .font(.system(size: 25, design: .serif))
                .fontWeight(.bold)
                .baselineOffset(7)
            
            Text("The programming language")
                .italic()
                .font(.system(size: 18))
                .kerning(1)
                .foregroundColor(Color(UIColor.systemGray))
                
        }
        
        VStack{
            Text("Multiline String")
                .font(.title)
            
            Text("""
                 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                 """)
            .padding()
            .multilineTextAlignment(.leading)
            
            }
        
        VStack{
            Text("this is minimumScaleFactor".uppercased().lowercased().capitalized)
                .frame(width: 100, height: 100, alignment: .leading)
                .minimumScaleFactor(0.5)
            //minimumScaleFactor이 뭔지 공부가 필요할 듯함
                .background(Color.orange)
                
                
        }
        
        VStack{
            Text("strikeThrough and underline")
                .bold()
                .font(.system(size: 25))
                .strikethrough(true, color: .orange)
                .underline(true, color: .blue)
        }
        
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
