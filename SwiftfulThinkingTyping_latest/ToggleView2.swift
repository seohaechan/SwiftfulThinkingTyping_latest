//
//  ToggleView2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/30.
//

import SwiftUI

struct ToggleView2: View {
    @State var isToggleOn: Bool = false
    var body: some View {
        NavigationStack{
            VStack{
                if isToggleOn {
                    Color.green.opacity(0.3)
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: 10)
                }else{
                    Color.red.opacity(0.3)
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: 10)
                }
                Toggle(isOn: $isToggleOn, label: {Text("System status")})
                    .padding(.horizontal, 18)
                    .toggleStyle(SwitchToggleStyle(tint: isToggleOn ? .green.opacity(0.3) : .red.opacity(0.3)))
                Spacer()
            }
            .navigationTitle("System \(isToggleOn ? "ON" : "OFF")")
            
        }
    }
}

struct ToggleView2_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView2()
    }
}
