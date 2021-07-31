//
//  SearchView.swift
//  TwitterSwiftUITutorial
//
//  Created by admin on 27/7/21.
//

import SwiftUI

struct SearchView: View {
  
  @State var searchText = ""
  
    var body: some View {
      
      ScrollView {
        SearchBar(text: $searchText)
          .padding()
        
        VStack(alignment: .leading) {
          ForEach(0..<10) { index in
            NavigationLink(
              destination: UserProfileView(),
              label: {
                UserCell()
              })
            HStack {Spacer()}
          }
        }
        .padding(.leading)
      }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
