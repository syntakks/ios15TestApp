//
//  MaterialView.swift
//  MaterialView
//
//  Created by Stephen Wall on 9/2/21.
//

import SwiftUI

struct MaterialView: View {
  var body: some View {
    ZStack {
      Image("trolltunga")
        .resizable()
        .scaledToFill()
      Text("Visit Norway")
        .padding()
        .background(.ultraThinMaterial)
        .foregroundColor(.secondary)
    }
    .navigationTitle("Material Background")
  }
}

struct MaterialView_Previews: PreviewProvider {
  static var previews: some View {
    MaterialView()
  }
}
