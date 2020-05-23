//
//  ContentView.swift
//  Animations
//
//  Created by bingyuan xu on 2020-05-23.
//  Copyright © 2020 bingyuan xu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State private var enabled = false
  
  var body: some View {
    Button("Tap Me") {
      self.enabled.toggle()
      
    }
      .frame(width: 200, height: 200)
      .background(enabled ? Color.blue : Color.red)
       .animation(nil)
      .foregroundColor(.white)
      .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
      .animation(Animation.interpolatingSpring(stiffness: 50, damping: 2))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
