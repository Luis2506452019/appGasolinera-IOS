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
        
        ZStack {
            ColorHelper.color("#333333").ignoresSafeArea()
            VStack {
                Text("Bienvenido \(authenticationViewModel.user?.email ?? "No User")")
                    .font(.title)
                    .padding()
            }
        }
        
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(authenticationViewModel: AuthenticationViewModel())
    }
}
