//
//  FeedView.swift
//  TwitterSwiftUITutorial
//
//  Created by admin on 26/7/21.
//

import SwiftUI

struct FeedView: View {
  
  @State var isShowNewTweetView = false
  
    var body: some View {
      ZStack(alignment: .bottomTrailing) {
        ScrollView {
          LazyVStack {
            ForEach(0..<20) { index in
              TweetCell()
            }
          }
          .padding()
          
        }
        Button(action: {
          isShowNewTweetView.toggle()
        }, label: {
          Image("tweet")
            .resizable()
            .renderingMode(.template)
            .frame(width: 32, height: 32)
            .padding()
        })
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape(Circle())
        .padding()
        .fullScreenCover(isPresented: $isShowNewTweetView) {
          NewTweetView(isPresented: $isShowNewTweetView)
        }
      }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
