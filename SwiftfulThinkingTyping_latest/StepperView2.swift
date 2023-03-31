//
//  StepperView2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/31.
//

import SwiftUI

struct StepperView2: View {
    @State var stepperValue: Int = 0
    var body: some View {
        NavigationStack{
            VStack{
                ZStack{
                    Color(uiColor: .systemGray).opacity(0.3)
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .cornerRadius(15)
                    Stepper("Select the amount. The number is \(stepperValue).") {
                        stepperValue += 10
                    } onDecrement: {
                        stepperValue -= 10
                    }
                    .padding(.horizontal, 20)

                }
                
                Text("\(stepperValue)")
            }
        }
    }
}

struct StepperView2_Previews: PreviewProvider {
    static var previews: some View {
        StepperView2()
    }
}
