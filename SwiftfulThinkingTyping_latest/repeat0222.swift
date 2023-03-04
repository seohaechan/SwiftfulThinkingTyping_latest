//
//  repeat0222.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/02/23.
//

import SwiftUI

struct repeat0222: View {
    var body: some View {
        VStack{
            
            Text("Swift")
                .font(.system(size: 25, design: .serif))
                .fontWeight(.ultraLight)
            
            Text("The programming language")
                .italic()
                .fontDesign(.serif)
                .padding(.bottom, 26.0)
            
            Text("""
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
""")
            .padding(.horizontal, 22.0)
            .multilineTextAlignment(.leading)
            .italic()
            .fontDesign(.serif)
            
            
        }
        
        VStack{
            
            Rectangle()
                .trim(from: 0.5)
                .stroke( style: StrokeStyle(
                    lineWidth: 10,
                    lineCap: .square,
                    dash: [15]
                    ))
                .fill(Color(UIColor.systemGray))
                .frame(width: 150, height: 150)
                .cornerRadius(15)
            
        }
        
        VStack{
            
            Ellipse()
                .stroke(Color(uiColor: .systemGray), lineWidth: 13)
                .frame(width: 150, height: 200)
                .shadow(color: .primary ,radius: 15, x: 50, y: -50)
                .padding(.bottom, 100)
            
            RoundedRectangle(cornerRadius: 15)
                .fill(Color("CustomColor"))
                .frame(width: 200, height: 130)
                .padding(.top, 6.0)
                .shadow(color: Color(uiColor: .systemGray), radius: 25, x: 50, y: -50)
                
        }
        
        VStack{
            
            Text("ToDoList")
                .fontWeight(.bold)
                .fontDesign(.serif)
                .font(.system(size: 25))
                .frame(width:350, height: 50,alignment: .leading)
            Spacer()
                .padding(-6.0)
            
            Text("walking")
                .strikethrough(true, color: .primary)
                .underline(true, color: Color(uiColor: .secondarySystemBackground))
                .font(.system(size: 25))
                .kerning(4)
        }
    }
}

struct repeat0222_Previews: PreviewProvider {
    static var previews: some View {
        repeat0222()
    }
}
