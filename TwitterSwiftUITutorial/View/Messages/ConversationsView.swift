//
//  ConversationsView.swift
//  TwitterSwiftUITutorial
//
//  Created by admin on 27/7/21.
//

import SwiftUI

struct ConversationsView: View {
  
  @State var isShowingNewMessageView = false
  @State var showChat = false
  
    var body: some View {
      ZStack(alignment: .bottomTrailing) {
        
        NavigationLink(
          destination: ChatView(),
          isActive: $showChat,
          label: {
            /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
          })
        
        ScrollView {
          VStack {
            ForEach(0..<20) { index in
              NavigationLink(
                destination: ChatView(),
                label: {
                  ConversationCell()
                })
            }
          }
          .padding()
          
        }
        Button(action: {
          isShowingNewMessageView.toggle()
        }, label: {
          Image(systemName: "envelope")
            .resizable()
            .scaledToFit()
            .frame(width: 32, height: 32)
            .padding()
        })
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape(Circle())
        .padding()
        .sheet(isPresented: $isShowingNewMessageView) {
          NewMessageView(show: $isShowingNewMessageView, startChat: $showChat)
        }

      }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
