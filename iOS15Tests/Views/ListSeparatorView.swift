//
//  ListSeparatorView.swift
//  ListSeparatorView
//
//  Created by Stephen Wall on 9/2/21.
//

import SwiftUI

struct ListSeparatorView: View {
  let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .indigo, .purple]
  var body: some View {
    List(1..<100) { index in
      Text("Row \(index)")
        //.listRowSeparator(.hidden) // This hides the separator
        .listRowSeparatorTint(randomColor()) // You can also apply a custom color to the separator
    }
    .navigationTitle("List Separator")
  }
  
  func randomColor() -> Color {
    return colors[Int.random(in: 0..<colors.count)]
  }
  
  
}

struct ListSeparatorView_Previews: PreviewProvider {
  static var previews: some View {
    ListSeparatorView()
  }
}
