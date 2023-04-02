//
//  SliderView3.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root  on 2023/03/31.
//

import SwiftUI

struct SliderView3: View {
    @State var sliderValue: Double = 3
    var body: some View {
        NavigationStack{
            ZStack {
                VStack{
                    ZStack {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .offset(x: 40, y: -120)
                            .foregroundColor(Color.yellow.opacity(0.3))
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .offset(x: 20, y: -110)
                            .foregroundColor(Color.yellow.opacity(0.7))
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.yellow)
                            .offset(y: -100)
                        
                    }
                    .offset(y: 170)
                    
                    
                    VStack(spacing: 5) {
                        Text("평점은")
                            .frame(width: 140, alignment: .leading)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        
                        Text(String(format: "%.1f", sliderValue) + "\n점 입니다.")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .padding(.top, 2)
                    }
                    .offset(y: 120)
                    
                    Slider(
                        value: $sliderValue,
                        in: 1...5,
                        step: 0.5,
                        label: {Text("")},
                        minimumValueLabel: {
                            Text("1")
                                .bold()
                        },
                        maximumValueLabel: {
                            Text("5")
                                .bold()
                        }
                    )
                    .tint(.yellow)
                    .padding(.horizontal, 30)
                    .padding(.top, 300)
                    
                }
                .navigationTitle("Rate the content")
                ZStack{
                    if sliderValue < 3.0 {
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 250, height: 100)
                                .foregroundColor(.white)
                                .shadow(radius: 7, x: 7, y: 7)
                            VStack {
                                Text("😟")
                                    .font(.largeTitle)
                                    .padding(.bottom, 10)
                                
                                Text("컨텐츠가 마음에 들지 않으셨나요?")
                                    .fontWeight(.heavy)
                            }
                        }
//                        .animation(.spring(), value: sliderValue)
                        
                    } else if sliderValue == 5 {
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 250, height: 100)
                                .foregroundColor(.white)
                                .shadow(radius: 7, x: 7, y: 7)
                            VStack {
                                Text("🤗")
                                    .font(.largeTitle)
                                    .padding(.bottom, 10)
                                
                                Text("컨텐츠에 정말 만족하셨군요!")
                                    .fontWeight(.heavy)
                            }
                        }
                    }
                }
                .animation(.spring(), value: sliderValue)
            }
        }
    }
}

struct SliderView3_Previews: PreviewProvider {
    static var previews: some View {
        SliderView3()
    }
}



