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
  
  var body: some View {
    Button("tap me ") {
      self.animationAmount += 1
    }
    .padding(50)
    .background(Color.red)
    .foregroundColor(Color.white)
    .clipShape(Circle())
    .scaleEffect(animationAmount)
    .blur(radius: animationAmount - 1)
    .animation(Animation.interpolatingSpring(stiffness: 100, damping: 8)
    .repeatCount(3, autoreverses: false)
    )
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
