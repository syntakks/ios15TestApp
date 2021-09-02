//
//  MarkdownView.swift
//  MarkdownView
//
//  Created by Stephen Wall on 9/2/21.
//

import SwiftUI

struct MarkdownView: View {
  var body: some View {
    Text("This is regular text")
    Text("This is **bold text**")
    Text("This is *italic* text")
    Text("This is ***bold italic*** text")
    Text("This is ~~strikethrough text~~")
    Text("This is `Monospaced text`")
    Text("Visit Apple: [click here](https://apple.com)")
      .navigationTitle("Markdown Text")
  }
}

struct MarkdownView_Previews: PreviewProvider {
  static var previews: some View {
    MarkdownView()
  }
}
