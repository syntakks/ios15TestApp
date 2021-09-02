//
//  PullToRefreshView.swift
//  PullToRefreshView
//
//  Created by Stephen Wall on 9/2/21.
//

import SwiftUI

struct PullToRefreshView: View {
  var body: some View {
    List(1..<100) { row in
      Text("Row \(row)")
    }
    .refreshable {
      print("Hey we are refreshing!")
    }
    .navigationTitle("Pull to Refresh")
  }
}

struct PullToRefreshView_Previews: PreviewProvider {
  static var previews: some View {
    PullToRefreshView()
  }
}
