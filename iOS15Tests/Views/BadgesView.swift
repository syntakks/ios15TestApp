//
//  BadgesView.swift
//  BadgesView
//
//  Created by Stephen Wall on 9/2/21.
//

import SwiftUI

struct BadgesView: View {
    var body: some View {
      TabView {
        // Home Tab
        Text("Your home screen goes here")
          .tabItem {
            Label("Home", systemImage: "house")
          }
          .badge(5) // Easily add a badge to the tab view button
        
        // Settings Tab
        // Badges can also be used in list items a simple decorators to the trailing side of the list. It doesn't have to be a typical badge per se.
        List {
          Text("Wi-Fi")
            .badge("LAN Solo")
          
          Text("Bluetooth")
            .badge("On")
        }
        .tabItem {
          Label("Settings", systemImage: "gear")
        }
      }
      .navigationTitle("Badges")
    }
}

struct BadgesView_Previews: PreviewProvider {
    static var previews: some View {
        BadgesView()
    }
}
