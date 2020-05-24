//
//  ContentView.swift
//  Animations
//
//  Created by bingyuan xu on 2020-05-23.
//  Copyright © 2020 bingyuan xu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  let letters = Array("Hello  SwiftUI")
  @State private var enabled = false
  @State private var dragAmount = CGSize.zero
  
  var body: some View {
    HStack(spacing: 0) {
      ForEach(0..<letters.count) {
        Text(String(self.letters[$0]))
          .padding(5)
          .font(.title)
          .background(self.enabled ? Color.blue : Color.red)
          .offset(self.dragAmount)
          .animation(Animation.interpolatingSpring(stiffness: 50, damping: 1).delay(Double($0) / 20))
      }
    }
    .gesture(
              DragGesture()
                  .onChanged { self.dragAmount = $0.translation }
                  .onEnded { _ in
                      self.dragAmount = .zero
                      self.enabled.toggle()
                  }
          )
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
