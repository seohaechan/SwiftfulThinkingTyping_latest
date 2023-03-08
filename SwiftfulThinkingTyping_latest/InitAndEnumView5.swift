//
//  InitAndEnumView5.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/05.
//
/*
 각각의 색을 나타내는 세 개의 박스에 신호에 맞춰 점등되는 신호등 사인을 만들어 보자!
 1. 재활용 가능한 네모난 roundedRectangle 세 개, extension으로 빼기
 2. 각각에 해당하는 아이콘들 준비하기, 아이콘은 점등이 되어 있지 않을 때에는 회색으로
 */



import SwiftUI

struct InitAndEnumView5: View {
    
    enum TrafficColor {
        case green
        case orange
        case red
    }
    
    let trafficColor: TrafficColor
    var cannotPass: Color = .gray
    var canPass: Color = .gray
    var ambigueos: Color = .gray
    
    init(trafficColor: TrafficColor) {
        self.trafficColor = trafficColor
        
        if trafficColor == .green {
            self.canPass = .green
        }else if trafficColor == .orange {
            self.ambigueos = .orange
        }else{
            self.cannotPass = .red
        }
        
    }
    
    
    
    
    
    var body: some View {

        ZStack {
            
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 200, height: 500)
                .foregroundColor(Color(uiColor: .systemGray))
            
            VStack{
                ZStack{
                    lightSquare
                    
                    Image(systemName: "person.fill.checkmark")
                        .resizable()
                        .foregroundColor(canPass)
                        .scaledToFill()
                        .frame(width: 90, height: 90)
                }
                
                ZStack {
                    lightSquare
                    
                    Image(systemName: "person.fill.questionmark")
                        .resizable()
                        .foregroundColor(ambigueos)
                        .scaledToFill()
                        .frame(width: 90, height: 90)
                        
                }
                
                ZStack {
                    lightSquare
                    
                    Image(systemName: "person.fill.xmark")
                        .resizable()
                        .foregroundColor(cannotPass)
                        .scaledToFill()
                        .frame(width: 90, height: 90)
                        .shadow(color: cannotPass, radius: 5)
                }
            }
        }

    }
}

extension InitAndEnumView5 {
    private var lightSquare: some View {
        
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 150, height: 150)
        
        
    }
}


struct InitAndEnumView5_Previews: PreviewProvider {
    static var previews: some View {
        InitAndEnumView5(trafficColor: .green)
    }
}
