//
//  ToggleView3.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/30.
//

import SwiftUI

struct ToggleView3: View {
    @State var isToggleOn: Bool = false
    var body: some View {
        NavigationStack{
            VStack{
                Rectangle()
                    .fill( isToggleOn ? Color.green.opacity(0.3) : Color.red.opacity(0.3))
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .edgesIgnoringSafeArea(.top)
                    
                Spacer()
                
                Toggle(isOn: $isToggleOn, label: {
                    HStack{
                        Image(systemName: "flame.fill")
                        Text("fire")
                    }
                })
                .padding(.horizontal, 20)
                Spacer()
            }
            .navigationTitle(Text("Fire sensor is \(isToggleOn ? "on" : "off")"))
        }
    }
}

struct ToggleView3_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView3()
    }
}
