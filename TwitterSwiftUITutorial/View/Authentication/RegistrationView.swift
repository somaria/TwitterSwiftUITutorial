//
//  RegistrationView.swift
//  TwitterSwiftUITutorial
//
//  Created by admin on 30/7/21.
//

import SwiftUI

struct RegistrationView: View {
  
  @State var email = ""
  @State var password = ""
  @State var fullName = ""
  @State var username = ""
  
  @State var showImagePicker = false
  
  @State var image: Image?
  
  @State var selectedUIImage: UIImage?
  
  
  @Environment(\.presentationMode) var mode: Binding<PresentationMode>
  
  
  func loadImage() {
    guard let selectedImage = selectedUIImage else { return }
    image = Image(uiImage: selectedImage)
  }
  
  var body: some View {
    ZStack {
      VStack {
        
        Button(action: {
          showImagePicker.toggle()
        }, label: {
          
          ZStack {
            
            if let image = image {
              
              image
                .resizable()
                .scaledToFill()
                .frame(width: 140, height: 140)
                .clipped()
                .cornerRadius(70)
                .padding(.top, 88)
                .padding(.bottom, 16)
              
            } else {
              Image("plus_photo")
                .resizable()
                .renderingMode(.template)
                .scaledToFill()
                .frame(width: 140, height: 140)
                .padding(.top, 88)
                .padding(.bottom, 16)
                .foregroundColor(.white)
              
            }
            
          }
          
          
        })
        .sheet(isPresented: $showImagePicker, onDismiss: loadImage, content: {
          ImagePicker(image: $selectedUIImage)
        })
        
        
        VStack(spacing: 20) {
          CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white)
          
          CustomTextField(text: $fullName, placeholder: Text("Full Name"), imageName: "person")
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white)
          
          CustomTextField(text: $username, placeholder: Text("User Name"), imageName: "person")
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
        
        Button(action: {}, label: {
          Text("Sign Up")
            .font(.headline)
            .foregroundColor(.blue)
            .frame(width: 360, height: 50)
            .background(Color.white)
            .clipShape(Capsule())
            .padding()
        })
        
        Spacer()
        
        
        Button(action: {
          mode.wrappedValue.dismiss()
        }, label: {
          HStack {
            Text("Already have an account?")
              .font(.system(size: 14))
            Text("Sign In")
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

struct RegistrationView_Previews: PreviewProvider {
  static var previews: some View {
    RegistrationView()
  }
}
