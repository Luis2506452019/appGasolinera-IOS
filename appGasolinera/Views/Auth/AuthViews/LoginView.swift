//
//  LoginView.swift
//  appGasolinera
//
//  Created by MacOsX on 11/10/23.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var authenticationViewModel: AuthenticationViewModel
    
    @State private var username: String = ""
    @State private var password: String = ""
    // Variable para controlar la visibilidad de la contraseña
    @State private var isSecure: Bool = true
    

    var body: some View {
        VStack {
            /*DismissView()
                .padding(.top, 8)
                .padding(.vertical)*/
            
            Spacer()
            
            Image("logoGasolinera")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(25)
                .background(Color.white)
                .frame(width: 150, height: 150)
            
            Spacer()
            
            ZStack(alignment: .leading) {
                if username.isEmpty {
                    Text("Correo")
                        .foregroundColor(Color.white.opacity(0.7))
                        .padding(.horizontal, 35)
                        //.padding(.top, 12)
                }
                TextField("", text: $username)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .padding(.horizontal, 20)
                    .autocapitalization(.none)
                    .foregroundColor(.white)
            }
            
            ZStack(alignment: .leading) {
                if password.isEmpty {
                    Text("Contraseña")
                        .foregroundColor(Color.white.opacity(0.7))
                        .padding(.horizontal, 35)
                        //.padding(.top, 12)
                }
                
                HStack {
                    if isSecure {
                        SecureField("", text: $password)
                    } else {
                        TextField("", text: $password)
                    }
                    Button(action: {
                        isSecure.toggle()
                    }) {
                        Image(systemName: isSecure ? "eye.slash" : "eye")
                            .foregroundColor(.white)
                            .padding(.trailing, 16)
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
                .padding(.horizontal, 20)
                .foregroundColor(.white)
            }

            Button(action: {
                authenticationViewModel.login(email: username, password: password)
            }) {
                Text("INGRESAR")
                    .font(.body)
                    .foregroundColor(.black)
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color.white)
                    .cornerRadius(8)
            }
            .padding(.top, 20)
            if let messageError = authenticationViewModel.messageError{
                Text(messageError)
                    .bold()
                    .font(.body)
                    .foregroundColor(.red)
                    .padding(.top, 20)
            }
            
            Spacer()
        }
        .padding()
        .background(ColorHelper.color("#333333"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(authenticationViewModel: AuthenticationViewModel())
    }
}
