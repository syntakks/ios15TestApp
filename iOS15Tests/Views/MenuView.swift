//
//  MenuView.swift
//  MenuView
//
//  Created by Stephen Wall on 9/2/21.
//

import SwiftUI

struct MenuView: View {
  var body: some View {
    // I stacked the view like this to see what would happen if the view wasn't centered, rather smushed in the corner
    VStack(alignment: .leading) {
      Text("Tap triggers print function")
      Text("Long Press shows options menu")
      
      HStack {
        // This will trigger a primary action on press and show option buttons for a long press. sick.
        Menu("Options") {
          Button("Order Now", action: placeOrder)
          Button("Adjust Order", action: adjustOrder)
        } primaryAction: {
          justDoIt()
        }
        Spacer()
      }
      
      // The options dialog will cover all these texts without issue.
      Text("Do I affect the menu dialog?")
      Text("what about me?")
      Text("does it even care that I'm here?")
      
      Spacer()
    }
    .padding()
    .navigationTitle("Menus")
  }
  
  func justDoIt() {
    print("Button was tapped")
  }
  
  func placeOrder() {
    print("Placing an Order")
  }
  
  func adjustOrder() {
    print("Adjusting an Order")
  }
}

struct MenuView_Previews: PreviewProvider {
  static var previews: some View {
    MenuView()
  }
}
