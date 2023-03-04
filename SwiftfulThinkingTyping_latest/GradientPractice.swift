//
//  GradientPractice.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/02/23.
//

import SwiftUI

struct GradientPractice: View {
    var body: some View {
        VStack{
            //linearGradient
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.red, .blue]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                )
                .frame(width: 250, height: 150)
                .padding()
            
            //angularGradient
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [.red, .blue]),
                        center: .center,
                        angle: .degrees(50))
                    )
                .frame(width: 250, height: 150)
                .padding()

            //radialGradient
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [.red, .blue]),
                        center: .center,
                        startRadius: 5,
                        endRadius: 100
                    )
                    )
                .frame(width: 250, height: 150)
                .padding()

            
            
        }
        // practice specially LinearGradient
        VStack{
            
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.red, .orange, .yellow, .purple]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                )
                .frame(width: 300, height: 150)
                .padding()
            
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color(uiColor: .systemGray), Color(uiColor: .systemBlue)]), startPoint: .center, endPoint: .bottom)
                )
                .frame(width: 300, height: 150)
                .padding()
            
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .red, .blue, .purple, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .frame(width: 300, height: 150)
                .padding()
            
        }
        
        // practice RadialGradient specifically
        VStack{
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    RadialGradient(gradient: Gradient(colors: [.red,.yellow, .black]), center: .center, startRadius: 5, endRadius: 150)
                )
                .frame(width: 300, height: 150)
                .padding()
            
            RoundedRectangle(cornerRadius: 15)
                .fill(
                RadialGradient(
                    gradient: Gradient(colors: [.red, .blue]),
                    center: .topLeading,
                    startRadius: 5,
                    endRadius: 320)
                )
                .frame(width: 300, height: 150)
                .padding()
            
            RoundedRectangle(cornerRadius: 30)
                .fill(
                RadialGradient(
                    gradient: Gradient(colors: [.red, .orange, .black]),
                    center: .center,
                    startRadius: 10,
                    endRadius: 110)
                )
                .frame(width: 200, height: 200)
                .padding()
            
        }
        
        // practice about angular gradient specically
        VStack{
            
            
            
        }
    }
}

struct GradientPractice_Previews: PreviewProvider {
    static var previews: some View {
        GradientPractice()
    }
}
