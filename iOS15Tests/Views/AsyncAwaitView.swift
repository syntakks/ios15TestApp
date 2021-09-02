//
//  AsyncAwaitView.swift
//  AsyncAwaitView
//
//  Created by Stephen Wall on 9/2/21.
//

import SwiftUI

struct NewsItem: Decodable, Identifiable {
  let id: Int
  let title: String
  let strap: String
}

struct AsyncAwaitView: View {
  @State private var news = [NewsItem(id: 0, title: "Want the latest news?", strap: "Pull to refresh!")]
  
  var body: some View {
    List(news) { item in
      VStack(alignment: .leading) {
        Text(item.title)
          .font(.headline)
        Text(item.strap)
          .font(.subheadline)
      }
    }
    .refreshable {
      do {
        let url = URL(string: "https://www.hackingwithswift.com/samples/news-1.json")!
        let (data, _) = try await URLSession.shared.data(from: url)
        news = try JSONDecoder().decode([NewsItem].self, from: data)
      } catch {
        news = []
      }
    }
    .navigationTitle("Async/ Await")
  }
}

struct AsyncAwaitView_Previews: PreviewProvider {
  static var previews: some View {
    AsyncAwaitView()
  }
}
