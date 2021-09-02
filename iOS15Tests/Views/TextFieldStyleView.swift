//
//  TextFieldStyleView.swift
//  TextFieldStyleView
//
//  Created by Stephen Wall on 9/2/21.
//

import SwiftUI

struct TextFieldStyleView: View {
  @State private var name = "Steve"
  
  var body: some View {
    VStack(alignment: .leading) {
      TextField("Enter your name", text: $name)
      // Easily add rounded border style with dot syntax
        .textFieldStyle(.roundedBorder)
      // Easily add return button label with dot syntax
        .submitLabel(.done)
      // Adding OS checks
        #if os(iOS)
        .padding()
        #endif
      Spacer()
    }
    .navigationTitle("Text Field Styles")
  }
}

struct TextFieldStyleView_Previews: PreviewProvider {
  static var previews: some View {
    TextFieldStyleView()
  }
}
