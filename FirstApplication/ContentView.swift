//
//  ContentView.swift
//  FirstApplication
//
//  Created by Jordan Alba Reed on 1/24/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("Put the Bullseye as Close as You Can")
                .bold()
                .kerning(2.0)
                .font(.footnote)
                .lineSpacing(4.0)
            Text("89")
                .foregroundColor(Color.black)
                .fontWeight(.black)
                .kerning(-1.0)
                .font(.largeTitle)
            HStack{
                Text("1")
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
            }
            HStack{
                VStack{
                    Text("SCORE")
                    Text("999")
                }
                Button(action: {
                    self.alertIsVisible = true
                    print(self.alertIsVisible)
                }){
                    Text("Hit Me").foregroundColor(Color(red:1, green:1, blue:1))
                }
                .controlSize(.regular)
                .buttonStyle(.bordered)
                .background(Color(red: 0.502, green: 0.56, blue: 0.973))
                .buttonBorderShape(.roundedRectangle)
                .cornerRadius(12)
                .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                VStack{
                    Text("ROUND")
                    Text("3")
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
	
