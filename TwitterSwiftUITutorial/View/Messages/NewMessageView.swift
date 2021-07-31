//
//  NewMessageView.swift
//  TwitterSwiftUITutorial
//
//  Created by admin on 29/7/21.
//

import SwiftUI

struct NewMessageView: View {
  @State var searchText = ""
  @Binding var show: Bool
  @Binding var startChat: Bool
  
    var body: some View {
      
      ScrollView {
        SearchBar(text: $searchText)
          .padding()
        
        VStack(alignment: .leading) {
          ForEach(0..<10) { index in
            Button(action: {
              show.toggle()
              startChat.toggle()
            }, label: {
              UserCell()
            })
            HStack {Spacer()}
          }
        }
        .padding(.leading)
      }
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
      NewMessageView(show: .constant(true), startChat: .constant(true))
    }
}
