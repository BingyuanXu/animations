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
    VStack {
      Button("Tap me") {
        self.enabled.toggle()
      }
      .frame(width: 100 , height: 25)
      .background(Color.blue)
      .foregroundColor(.black)
      if(enabled){
        Rectangle()
          .fill(Color.red)
          .frame(width: 200 , height: 200)
          //          .transition(.scale)
          .transition(.asymmetric(insertion: .scale, removal: .opacity))
      }
    }
    .animation(.default)
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
