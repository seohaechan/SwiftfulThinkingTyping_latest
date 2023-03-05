//
//  InitAndEnumView3.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root  on 2023/03/04.
//

import SwiftUI

struct InitAndEnumView3: View {
    
    let number: Int
    let color: Color
    let fontColor: Color
    let fruit: Fruit
    
    enum Fruit: String {
        case apple
        case orange
        case melon
    }
    
    
    init(number: Int, fruit: Fruit, fontColor: Color) {
        self.number = number
        self.fontColor = fontColor
        self.fruit = fruit

        if fruit == .orange {
            color = .orange
        }else if fruit == .apple {
            color = .red
        }else{
            color = Color(uiColor: .systemGreen)
        }

    }
    
    
    var body: some View {
        
        HStack{
            rectangle
        }
        
    }
}


extension InitAndEnumView3 {
    private var rectangle: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 150, height: 150)
                .foregroundColor(color)
                .shadow(color: color,radius: 15, x: 15, y: 15)
            
            VStack(spacing: 10) {
                Text("\(number)" + ".")
                    .foregroundColor(fontColor)
                    .fontWeight(.heavy)
                    .font(.system(size: 40))
                    
                
                Text("It is your number")
                    .foregroundColor(fontColor)
                    .font(.system(size: 14, weight: .bold))
            }
        }
        
    }
}



struct InitAndEnumView3_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 30) {
            HStack(spacing: 30) {
                InitAndEnumView3(number: 5, fruit: .melon, fontColor: .white)
                InitAndEnumView3(number: 7, fruit: .apple, fontColor: .white)
            }
            HStack{
                InitAndEnumView3(number: 13, fruit: .orange, fontColor: .white)
            }
        }
    }
}
