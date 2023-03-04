//
//  StackH.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/02.
//

import SwiftUI

struct StackH: View {
    var body: some View {

        VStack {
            
            Text("Darwin")
                .padding(.bottom, 100)
                .font(.system(size: 50, weight: .heavy, design: .default))
                .italic()
                .kerning(2)
                .foregroundColor(Color(uiColor: .systemOrange))
                .shadow(color: .orange,radius: 5)
            
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 300, height: 300)
                    .foregroundColor(
                        Color(uiColor: .systemGray)
                    )
                    .shadow(radius: 10, x: 10, y: 10)
                    .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 290, height: 290)
                        .foregroundColor(
                            Color(uiColor: .secondarySystemBackground)
                        )
                    )
                VStack{
                    
                    horizentalDarwinSet
                        .padding(.bottom)
                        .shadow(radius: 5)
                    horizentalDarwinSet
                        .shadow(radius: 5)
                    
                }
                    
            }
        }

        
    }
}


extension StackH {
    private var darwinSquare: some View {
        
        Image("Darwin")
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(10)
            .background(
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 160, height: 160)
                    .cornerRadius(10)
            )
        
    }
}

extension StackH {
    private var horizentalDarwinSet: some View {
        
        HStack(spacing: 30){
            darwinSquare
            darwinSquare
        }
        
    }
}



struct StackH_Previews: PreviewProvider {
    static var previews: some View {
        StackH()
    }
}
