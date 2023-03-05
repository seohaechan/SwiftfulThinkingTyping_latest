//
//  InitAndEnumView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root  on 2023/03/04.
//
 
import SwiftUI

struct InitAndEnumView: View {
    
    let backgroundColor: Color
    let count: Int
    let aString: String = "6"
    let title: Fruit
    
    enum Fruit: String {
        case apple = "apple"
        case orange = "orange"
    }
    
    init(count: Int, title: Fruit) {
        self.count = count
        self.title = title
        
        if title == .apple {
            self.backgroundColor = .red
        }else{
            self.backgroundColor = .orange
        }
    }
    // SwiftUI는 똑똑해서 위의 init 코드를 작성하지 않더라도, 아래의 InitAndEnumView(backgroundColor: .red, count: 55, title: "Peaches") 코드에서 작성하면 되지만, 어찌되었던 간에 init의 원래 형태는 위와 같이 생겼다.
    
    var body: some View {
        
        VStack(spacing: 12 ) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text("\(title.rawValue)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
        
    }
}






struct InitAndEnumView_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            InitAndEnumView(count: 55, title: .orange)
            InitAndEnumView(count: 55, title: .orange)

        }

    }
}
