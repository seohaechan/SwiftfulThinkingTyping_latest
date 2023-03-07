//
//  StateView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/06.
//

import SwiftUI

struct StateView: View {
    
    @State var backgroundColor: Color = .white
    @State var count: Int = 0
    @State var title: ColorName = .white
    
    enum ColorName: String {
        case red = "Red"
        case blue = "Blue"
        case white = "White"
    }
    
    var body: some View {
        
        VStack(spacing: 0){
            
            Text("\(title.rawValue)")
                .font(.largeTitle)
                .bold()
                .underline()
            
            HStack(spacing: 0){
                Text("count: ")
                    .font(.title)
                Text("\(count)")
                    .font(.title)
            }
            .padding(.top, 10)
            .padding(.bottom, 10)
            
            HStack(spacing: 0){
                
                Button {
                    backgroundColor = .red
                    title = .red
                    count += 1
                } label: {
                    buttonView
                        .overlay(
                        Text("button 1")
                        )
                        .padding(.trailing)
                }

                Button {
                    backgroundColor = .blue
                    title = .blue
                    count -= 1
                }label: {
                    
                    buttonView
                        .overlay(
                            Text("button 2")
                        )
                }
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor)
            
        
    }
}

extension StateView {
    private var buttonView: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 50)
            .foregroundColor(Color(uiColor: .systemGray3))
            .shadow(color: .gray, radius: 5, x: 6, y: 6)
    }
}


struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
