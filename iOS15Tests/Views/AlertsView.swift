//
//  AlertButtonRoleView.swift
//  AlertButtonRoleView
//
//  Created by Stephen Wall on 9/2/21.
//

import SwiftUI

struct AlertsView: View {
  @State private var showingAlert = false
  
  var body: some View {
    Button("Show Alert") {
      showingAlert = true
    }
    .alert("Important message", isPresented: $showingAlert) {
      Button("First", role: .destructive) { } // All alert buttons cancel the alert by default.
      Button("Second") { }
      Button("Third") { } // by not providing a cancel role, one is automatically added to the alert buttons for you.
    }
    .navigationTitle("Alerts & Buttons")
  }
  
}

struct AlertButtonRoleView_Previews: PreviewProvider {
  static var previews: some View {
    AlertsView()
  }
}
