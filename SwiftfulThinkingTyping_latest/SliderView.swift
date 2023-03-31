//
//  SliderView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/31.
//

import SwiftUI

struct SliderView: View {
    @State var sliderValue: Double = 0
    @State var sliderValue2: Double = 3
    @State var sliderValue3: Double = 3
    @State var color: Color = .red
    var body: some View {
        VStack{
            Slider(value: $sliderValue )
                .padding(.horizontal, 20)
                .tint(.red)
            
            Slider(value: $sliderValue )
                .padding(.horizontal, 20)
            
            HStack {
                Text("The value is: ")
                Text(String(format: "%.0f", sliderValue2))
                
            }
            
            Slider(value: $sliderValue2, in: 1 ... 5, step: 1.0)
                .padding(.horizontal, 20)
                .tint(.purple)
            
            Slider(
                value: $sliderValue3,
                in: 1...5,
                step: 0.5,
                label: {Text("stepper3")},
                minimumValueLabel: {Text("1")},
                maximumValueLabel: {Text("5")},
                onEditingChanged: {(_) in
                    color = .green
                })
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
