//
//  ContentView.swift
//  Animations
//
//  Created by bingyuan xu on 2020-05-23.
//  Copyright © 2020 bingyuan xu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State private var animationAmount : CGFloat = 1
  @State private var animationAmountTwo : CGFloat = 1
  
  var body: some View {
    NavigationView {
    VStack {
      
      Stepper("Scale amount", value: $animationAmountTwo.animation(), in: 1...10)
        .padding()
        
      
      Spacer()
      
      Button("Tap me") {
        self.animationAmountTwo += 1
      }
      .padding(40)
      .background(Color.red)
      .foregroundColor(Color.white)
      .clipShape(Circle())
      .scaleEffect(animationAmountTwo)
      
      Spacer()
      
      Button("tap me ") {
        
        self.animationAmount = 3
      }
      .padding(50)
      .background(Color.red)
      .foregroundColor(Color.white)
      .clipShape(Circle())
        //    .scaleEffect(animationAmount)
        //    .blur(radius: animationAmount - 1)
        .overlay(
          Circle()
            .stroke(Color.red)
            .scaleEffect(animationAmount)
            .opacity(Double(2 - animationAmount))
            
            .animation(Animation.easeInOut(duration: 1.5)
              .repeatCount(1, autoreverses: false)
              //        .repeatForever(autoreverses: false)
              
          )
      )
    }
    //      .onAppear {
    //        self.animationAmount = 2
    //    }
      .navigationBarTitle("Animation")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
