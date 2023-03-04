//
//  ShapeView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/02/22.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
        VStack{
            Circle()
                .padding()
                .frame(width:200, height: 100)
            
            Ellipse()
                .padding()
                .frame(width:200, height: 100)
            
            Capsule()
                .frame(width: 200, height:100)
                .padding()
            
            HStack {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .padding()
                
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 100, height: 100)
                    .padding()
                
                // 세모는 어떻게 만들지?
            }
            
                
            }
        
        VStack {
            //trim 연습을 해보아용
            Circle()
                .trim(from: 0.5, to: 1.0)
            //왜 trim이 가장 앞에 와야 하는지에 대한 이유를 잘 모르겠음
                .stroke(.red, style: StrokeStyle(lineWidth: 25, dash: [25]))
                .frame(width: 200, height: 200)
            
            
            RoundedRectangle(cornerRadius: 30)
                .trim(from: 0.3, to: 1.0)
                .stroke(Color.cyan, lineWidth: 30)
                .frame(width: 200, height:100)
                
            
            
        
        }
            //stroke 연습
        
        VStack {
            
            HStack {
                Circle()
                    .stroke(Color.red , style: StrokeStyle(lineWidth: 4, lineCap: .round ,dash: [12], dashPhase: 20))
                    // what is 'dash' and 'dashPhase'?
                    .padding()
                    .frame(width: 100, height: 100)
                
                RoundedRectangle(cornerRadius: 15)
                    .trim(from: 0.5, to: 1.0)
                    .stroke(.green, style: StrokeStyle(lineWidth: 3, lineCap: .square, dash: [10], dashPhase: 20.00))
                    .frame(width: 100, height: 100)
                // 'dash'는 왜 array 형태로 쓰일까?
                //  만든 도형을 돌리려면 어떻게 해야 할까?
            }
        }
        
        //learn about trim() again.
         
        VStack {
            Rectangle()
                .trim(from: 0.2, to: 1.0)
                .frame(width: 200, height: 200)
                .cornerRadius(20)
        }
        
        // practice fill()
        
        VStack{
            
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.red)
                .frame(width: 150, height: 150)
            
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color.red)
                .frame(width: 150, height: 150)
        }
    }
    
}

struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
