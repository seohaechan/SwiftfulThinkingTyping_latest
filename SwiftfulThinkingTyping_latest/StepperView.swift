//
//  StepperView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/31.
//

import SwiftUI

struct StepperView: View {
    @State var stepperValue: Int = 0
    @State var steppeerValue2: Int = 0
    var body: some View {
        VStack{
            Stepper("the value is : \(stepperValue)", value: $stepperValue)
                .padding(.horizontal, 20)
            
            Stepper("the value2 is : \(steppeerValue2)") {
                steppeerValue2 += 10
            } onDecrement: {
                steppeerValue2 -= 10
            }

        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
