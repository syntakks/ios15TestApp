//
//  ForegroundStyleView.swift
//  ForegroundStyleView
//
//  Created by Stephen Wall on 9/2/21.
//

import SwiftUI

struct ForegroundStyleView: View {
    var body: some View {
      HStack {
        Image(systemName: "clock.fill")
        Text("Set the time")
      }
      .font(.largeTitle.bold())
      //.foregroundStyle(.quaternary)
      .foregroundStyle(
        .linearGradient(colors: [.red, .black], startPoint: .top, endPoint: .bottom)
      )
      
      .navigationTitle("Foreground Styles")
    }
}

struct ForegroundStyleView_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundStyleView()
    }
}
