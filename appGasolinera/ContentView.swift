//
//  ContentView.swift
//  appGasolinera
//
//  Created by MacOsX on 10/25/23.
//

//
//  ContentView.swift
//

import SwiftUI

enum AuthenticationSheetView: String, Identifiable {
    case register
    case login
    
    var id: String{
        return rawValue
    }
}

struct ContentView: View {
    @ObservedObject var authenticationViewModel: AuthenticationViewModel
    @State private var authenticationSheetView: AuthenticationSheetView?
    
    var body: some View {
        VStack {
            Image("logoGasolinera")
                .resizable()
                .frame(width: 200, height: 200)
            
            VStack {
                Button {
                    authenticationSheetView = .login
                } label: {
                    Label("Entra con Email", systemImage: "envelope.fill")
                        .foregroundColor(.black)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.gray.opacity(0.5))
                        .cornerRadius(8)
                }
            }
            .padding(.top, 60)
            .padding(.horizontal)
            
            Spacer()
            
            HStack {
                Text("¿No tienes cuenta?")
                .foregroundColor(.black)
                Button {
                    authenticationSheetView = .register
                } label: {
                    Text("Regístrate")
                        .underline()
                        .foregroundColor(.black)
                }
            }
            .padding(.top, -30)
        }
        .sheet(item: $authenticationSheetView) { sheet in
            switch sheet{
            case .register:
                RegistrationView(authenticationViewModel: authenticationViewModel)
            case .login:
                LoginView(authenticationViewModel: authenticationViewModel)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(authenticationViewModel: AuthenticationViewModel())
    }
}
