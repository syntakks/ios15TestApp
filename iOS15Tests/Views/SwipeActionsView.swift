//
//  SwipeActionsView.swift
//  SwipeActionsView
//
//  Created by Stephen Wall on 9/2/21.
//

import SwiftUI

struct SwipeActionsView: View {
  let names = ["Matt", "Justin", "Grant", "Steve", "Chris", "Ray"]
  var body: some View {
    List {
      ForEach(names, id: \.self) { name in
        Text(name)
          .swipeActions(allowsFullSwipe: false) {
            Button {
              print("Muting this conversation")
            } label: {
              Label("Mute", systemImage: "bell.slash.fill")
            }
            .tint(.indigo)
            
            Button(role: .destructive) {
              print("Deleting this conversation")
            } label: {
              Label("Delete", systemImage: "trash.fill")
            }
          }
      }
    }
    .navigationTitle("Swipe Actions")
  }
}

struct SwipeActionsView_Previews: PreviewProvider {
  static var previews: some View {
    SwipeActionsView()
  }
}
