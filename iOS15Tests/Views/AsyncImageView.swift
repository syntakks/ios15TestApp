//
//  AsyncImage.swift
//  AsyncImage
//
//  Created by Stephen Wall on 9/2/21.
//

import SwiftUI

struct AsyncImageView: View {
  let url = URL(string: "https://www.hiptoro.com/wp-content/uploads/2020/02/Dragon-Ball-Super-Chapter-58-Release-Date-Spoilers-Goku-will-save-the-Heroes-and-fight-Moro-150x150.jpg")
  var body: some View {
    VStack {
      AsyncImage(url: url) { image in
        image.resizable()
      } placeholder: {
        Image(systemName: "person.circle.fill")
          .resizable()
          .frame(width: 150, height: 150)
          .foregroundColor(.red)
      }
      .frame(width: 150, height: 150)
      .clipShape(Circle())
      Text("Goku")
        .padding()
        .font(.title)
        .foregroundColor(.orange)
        .background(.blue)
        .clipShape(Capsule())
    }
    .navigationTitle("Async Image")
  }
}

struct AsyncImageView_Previews: PreviewProvider {
  static var previews: some View {
    AsyncImageView()
  }
}
