//
//  LoginView.swift
//  TwitterSwiftUITutorial
//
//  Created by admin on 30/7/21.
//

import SwiftUI

struct LoginView: View {
  
  @State var email = ""
  @State var password = ""
  
    var body: some View {
      NavigationView {
        ZStack {
          VStack {
            Image("twitter-logo")
              .resizable()
              .scaledToFill()
              .frame(width: 220, height: 100)
              .padding(.top, 88)
              .padding(.bottom)
            
            VStack(spacing: 20) {
              CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                .padding()
                .background(Color(.init(white: 1, alpha: 0.15)))
                .cornerRadius(10)
                .foregroundColor(.white)
              
              CustomSecureField(text: $password, placeholder: Text("Password"))
                .padding()
                .background(Color(.init(white: 1, alpha: 0.15)))
                .cornerRadius(10)
                .foregroundColor(.white)
            }
            .padding(.horizontal, 32)
            
            HStack {
              Spacer()
              Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Forgot Password?")
                  .font(.footnote)
                  .bold()
                  .foregroundColor(.white)
                  .padding(.top, 16)
                  .padding(.trailing, 32)
              })
            }
            
            Button(action: {}, label: {
              Text("Sign In")
                .font(.headline)
                .foregroundColor(.blue)
                .frame(width: 360, height: 50)
                .background(Color.white)
                .clipShape(Capsule())
                .padding()
            })
            
            Spacer()
            
            NavigationLink(
              destination: RegistrationView()
                .navigationBarBackButtonHidden(true),
              label: {
                HStack {
                  Text("Dont' have an account?")
                    .font(.system(size: 14))
                  Text("Sign Up")
                    .font(.system(size: 14))
                }
                .foregroundColor(.white)
                .padding(.bottom, 40)
              })

          }
        }
        .background(Color(#colorLiteral(red: 0.1936737299, green: 0.6331064105, blue: 0.9527135491, alpha: 1)))
        .ignoresSafeArea()
      }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
