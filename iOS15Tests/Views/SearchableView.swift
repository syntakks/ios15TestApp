//
//  SearchableView.swift
//  SearchableView
//
//  Created by Stephen Wall on 9/2/21.
//

import SwiftUI

struct SearchableView: View {
  let names = ["Matt", "Justin", "Grant", "Steve", "Chris", "Ray"]
  @State private var searchText = ""
  
  var body: some View {
    List {
      ForEach(searchResults, id: \.self) { name in
        NavigationLink(destination: Text(name)) {
          Text(name)
        }
      }
    }
    // Just by adding this modifier, it knows the data set it should filter on... nice!
    .searchable(text: $searchText) {
      // You can add custom suggestions inside the optional code block here. Without this it will just filter on your cells normally.
      ForEach(searchResults, id: \.self) { result in
        Text("Are you looking for \(result)?")
          .searchCompletion(result)
      }
    }
    .navigationTitle("Searchable")
  }
  
  var searchResults: [String] {
    if searchText.isEmpty {
      return names
    } else {
      return names.filter { $0.contains(searchText) }
    }
  }
  
}

struct SearchableView_Previews: PreviewProvider {
  static var previews: some View {
    SearchableView()
  }
}
