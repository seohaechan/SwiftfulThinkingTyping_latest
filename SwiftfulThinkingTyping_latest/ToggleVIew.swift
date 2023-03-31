//
//  ToggleVIew.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/30.
//

import SwiftUI

struct ToggleVIew: View {
    @State var isToggleOne: Bool = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                HStack{
                    Text("System")
                    Text(isToggleOne ? "ON" : "Off")
                }
                .frame(maxWidth: .infinity, maxHeight: 70)
                .background(isToggleOne ? Color.green.opacity(0.3) : Color.red.opacity(0.3))
                
                Toggle(isOn: $isToggleOne, label: {Text("hello")})
                    .padding(.horizontal, 30)
                    .padding()
                
                Spacer()
                    
            }
            .navigationTitle("System \(isToggleOne ? "ON" : "OFF")")
        }
    }
    
    struct ToggleVIew_Previews: PreviewProvider {
        static var previews: some View {
            ToggleVIew()
        }
    }
}
