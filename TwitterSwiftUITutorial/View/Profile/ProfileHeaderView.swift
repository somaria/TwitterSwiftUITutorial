//
//  ProfileHeaderView.swift
//  TwitterSwiftUITutorial
//
//  Created by admin on 29/7/21.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
      VStack {
        Image("batman")
          .resizable()
          .scaledToFill()
          .clipShape(Circle())
          .frame(width: 120, height: 120)
          .cornerRadius(120 / 2)
          .shadow(color: .black, radius: 20, x: 0, y: 0)
        
        Text("Bruce Wayne")
          .font(.system(size: 16, weight: .semibold))
          .padding(.top, 8)
        
        Text("@batman")
          .font(.subheadline)
          .foregroundColor(.gray)
        
        Text("Billionaire by day, dark knight by night")
          .font(.system(size: 14))
          .padding(.top, 8)
        
        HStack(spacing: 40) {
          VStack {
            Text("12")
              .font(.system(size: 16)).bold()
            
            Text("Followers")
              .font(.footnote)
              .foregroundColor(.gray)
          }
          VStack {
            Text("12")
              .font(.system(size: 16)).bold()
            
            Text("Followers")
              .font(.footnote)
              .foregroundColor(.gray)
          }
        }
        .padding()
        ProfileActionButtonView(isCurrentUser: false)
        Spacer()
      }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
