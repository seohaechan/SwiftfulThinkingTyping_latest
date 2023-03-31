//
//  ColorPickerView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/30.
//

import SwiftUI

struct ColorPickerView: View {
    @State var backgroundColor: Color = .white
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundColor
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    NavigationLink(
                        destination: GrayExplanation(),
                        label: {
                            Image(systemName: "person.fill")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .padding(.top, 140)
                                .foregroundColor(Color(uiColor: .systemGray).opacity(0.3))
                        })
                    
                    
                    Spacer()
                    
                    ColorPicker("Change BackgroundColor", selection: $backgroundColor,supportsOpacity: true)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .frame(height: 70)
                        )
                        .padding(.horizontal)
                    
                    Spacer()
                    
                }
                .navigationTitle("Color Picker")
            }
        }
            
    }
}
struct GrayExplanation: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Image(systemName: "laurel.leading")
                    .font(.largeTitle)
                Text("the color of metal")
                    .font(.largeTitle)
                .bold()
                Image(systemName: "laurel.trailing")
                    .font(.largeTitle)
                
            }
                
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading)
        .navigationTitle("Gray :")
    }
}
struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
        GrayExplanation()
    }
}
