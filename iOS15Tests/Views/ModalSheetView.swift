//
//  ModalSheetView.swift
//  ModalSheetView
//
//  Created by Stephen Wall on 9/2/21.
//

import SwiftUI

struct ModalSheetView: View {
  @State private var showingSheet = false
  
  var body: some View {
    Button("Show Sheet") {
      showingSheet.toggle()
    }
    .sheet(isPresented: $showingSheet) {
      ExampleSheet()
    }
    .navigationTitle("Modal Sheet")
    
  }
}

struct ExampleSheet: View {
  // Required to manually dismiss the sheet
  @Environment(\.presentationMode) var presentationMode
  @State private var termsAccepted = false
  
  var body: some View {
    VStack {
      Text("Terms and Conditions")
        .font(.title)
      Text("Lots of legalese here... You won't be able to swipe this sheet until you accept the terms")
      
      Toggle("Accept", isOn: $termsAccepted)
      
      // Button approach
      //Button("Dismiss", action: close)
    }
    .padding()
    // This modifier will prevent the sheet from being swiped away
    // We also can pass in a bool to determine if the swipe can be allowed or not
    .interactiveDismissDisabled(!termsAccepted)
  }
  
  // Used with button approach
  func close() {
    presentationMode.wrappedValue.dismiss()
  }
  
}

struct ModalSheetView_Previews: PreviewProvider {
  static var previews: some View {
    ModalSheetView()
  }
}
