//
//  ContentView.swift
//  TwitterSwiftUITutorial
//
//  Created by admin on 26/7/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    
    NavigationView {
      TabView {
        FeedView()
          .tabItem {
            Image(systemName: "house")
            Text("Home")
          }
        
        SearchView()
          .tabItem {
            Image(systemName: "magnifyingglass")
            Text("Search")
          }
        
        ConversationsView()
          .tabItem {
            Image(systemName: "envelope")
            Text("Messages")
          }
      }
      .navigationBarTitle("Home")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
