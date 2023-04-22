//
//  LoginScreenSwiftUI.swift
//  PresentationApp
//
//  Created by Admin on 2023-04-18.
//

import SwiftUI

struct LoginScreenSwiftUI: View {
    
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Image("github_logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .padding(.top, 50)
            
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 20)
                .frame(width: 250, height: 50)
                .padding(.top, 50)
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 20)
                .frame(width: 250, height: 50)
                .padding(.top, 20)
            
            Button(action: handleLogin) {
                Text("Log in")
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .cornerRadius(5)
            }
            .padding(.top, 20)
        }
    }
    
    func handleLogin() {
        // Handle login here
    }
}

struct LoginScreenSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenSwiftUI()
    }
}
