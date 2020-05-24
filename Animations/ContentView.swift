//
//  ContentView.swift
//  Animations
//
//  Created by bingyuan xu on 2020-05-23.
//  Copyright © 2020 bingyuan xu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State private var dragAmount = CGSize.zero //The size whose width and height are both zero.
  var body: some View {
    LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
      .frame(width: 300, height: 200)
      .clipShape(RoundedRectangle(cornerRadius: 10))
      .offset(dragAmount)
      //      .animation(.spring())
      .gesture(
        DragGesture()
          .onChanged { self.dragAmount = $0.translation }
          .onEnded { _ in
            withAnimation(.spring()) {
              self.dragAmount = .zero
            }
        }
    )
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
