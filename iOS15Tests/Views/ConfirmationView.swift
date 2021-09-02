//
//  ConfirmationView.swift
//  ConfirmationView
//
//  Created by Stephen Wall on 9/2/21.
//

import SwiftUI

struct ConfirmationView: View {
  @State private var showingOptions = false
  @State private var selected = "None"
  
  var body: some View {
    VStack {
      Text(selected)
      
      Button("Confim paint color") {
        showingOptions = true
      }
      .confirmationDialog("Select a color", isPresented: $showingOptions, titleVisibility: .visible) {
        Button("Red", role: .destructive) { // Can also use roles here as elsewhere to color the option red and give the user/ swiftui more context.
          selected = "Red"
        }
        Button("Blue") {
          selected = "Blue"
        }
        Button("Green") {
          selected = "Green"
        }
      }
    }
    .navigationTitle("Confirmation View")
  }
  
}

struct ConfirmationView_Previews: PreviewProvider {
  static var previews: some View {
    ConfirmationView()
  }
}
