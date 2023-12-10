//
//  HomeView.swift
//  appGasolinera
//
//  Created by MacOsX on 11/5/23.
//
import SwiftUI

struct HomeView: View {
    @ObservedObject var authenticationViewModel: AuthenticationViewModel

    var body: some View {
        
        ScrollView(){
            ZStack{
                ColorHelper.color("#333333").ignoresSafeArea()
                
                VStack {
                  
                    Text("¡Hola \(authenticationViewModel.user?.email.components(separatedBy: "@").first ?? "Usuario")!")
                        .font(.system(size:28))
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                   
                    Text("Bienvenido a tu app de confianza.")
                        .font(.system(size:16))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                   
                    Image("homeGasolinera")
                        .renderingMode(.original)
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 138, height: 158)
                        .padding()
                    
                    /*VStack {
                        Text("\" El único modo de hacer un gran trabajo es amar lo que haces. \"")
                            .bold()
                            .multilineTextAlignment(.center)
                            .font(.system(size: 15))
                            .foregroundColor(.black)
                        Divider()
                        Text("- Steve Jobs")
                            .font(.system(size: 15))
                            .foregroundColor(.black)
                    }
                    .padding(20)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                    )*/
                }.padding()
                
            }
        }.padding()
        
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(authenticationViewModel: AuthenticationViewModel())
    }
}
