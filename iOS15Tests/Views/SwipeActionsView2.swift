//
//  SwipeActionsView2.swift
//  SwipeActionsView2
//
//  Created by Stephen Wall on 9/2/21.
//

import SwiftUI

struct SwipeActionsView2: View {
  @State private var total = 0
  
  var body: some View {
    VStack {
      Text("Total: \(total)")
        .font(.title)
      List {
        ForEach(1..<100) { i in
          Text("\(i)")
            .swipeActions(edge: .leading) {
              Button {
                total += i
              } label: {
                Label("Add \(i)", systemImage: "plus.circle")
              }
              .tint(.green)
            }
            .swipeActions(edge: .trailing) {
              Button(role: .destructive) {
                total -= i
              } label: {
                Label("Subtract \(i)", systemImage: "minus.circle")
              }
            }
        }
      }
    }
    .navigationTitle("Swipe Calculator")
  }
}

struct SwipeActionsView2_Previews: PreviewProvider {
  static var previews: some View {
    SwipeActionsView2()
  }
}
