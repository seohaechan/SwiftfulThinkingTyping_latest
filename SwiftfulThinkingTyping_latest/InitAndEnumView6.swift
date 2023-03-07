//
//  InitAndEnumView6.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root  on 2023/03/05.
//

import SwiftUI

struct InitAndEnumView6: View {
    
    var greenSign: Color
    var orangeSign: Color
    var redSign: Color
    var trafficSign:TrafficSign? = nil
    
    enum TrafficSign {
        case green
        case orange
        case red
    }
    
    func toggleTheButton() {
        
    }
    
    init(trafficSign: TrafficSign) {
        
        self.greenSign = .gray
        self.orangeSign = .gray
        self.redSign = .gray
        
        if trafficSign == .green {
            greenSign = .green
        }else if trafficSign == .orange {
            orangeSign = .orange
        }else{
            redSign = .red
        }
        
    }
    
    var body: some View {
        
        VStack {
            ZStack{
                VStack{
                    ZStack {
                        trafficLightSquare
                        Image(systemName: "person.fill.checkmark")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(greenSign)
                            .frame(width: 100, height: 100)
                            .shadow(color:greenSign, radius: 5)
                    }
                    ZStack {
                        trafficLightSquare
                        Image(systemName: "person.fill.questionmark")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(orangeSign)
                            .frame(width: 100, height: 100)
                            .shadow(color: orangeSign, radius: 5)
                    }
                    ZStack {
                        trafficLightSquare
                        Image(systemName: "person.fill.xmark")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(redSign)
                            .frame(width: 100, height: 100)
                            .shadow(color: redSign, radius: 5)
                    }
                }
            }
            .frame(width: 170, height: 490)
            .background(.gray)
        .cornerRadius(15)
            
            Button {
                toggleTheButton()
            } label: {
                Text("버튼")
                    .foregroundColor(.white)
                    .frame(width: 150, height: 50)
                    .background(Color(uiColor: .systemBlue))
                    .cornerRadius(15)
            }
        }
    }
}


extension InitAndEnumView6 {
    private var trafficLightSquare: some View {
        
        RoundedRectangle(cornerRadius: 15)
            .frame(width: 150, height: 150)
            .foregroundColor(.black)
        
    }
}


struct InitAndEnumView6_Previews: PreviewProvider {
    static var previews: some View {
        InitAndEnumView6(trafficSign: .red)
    }
}
