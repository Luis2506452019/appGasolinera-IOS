//
//  MainView.swift
//  appGasolinera
//
//  Created by MacOsX on 11/30/23.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var authenticationViewModel: AuthenticationViewModel
    @State private var indexSeleccionado = 2
    let iconos = ["gauge", "map", "house", "gift"]

    var body: some View {
        
        NavigationView {
            VStack {
                // Contenido de navegación
                switch indexSeleccionado {
                case 0:
                    EstacionView()
                case 1:
                    UbicacionView()
                case 2:
                    HomeView(authenticationViewModel: authenticationViewModel)
                case 3:
                    OfertaView()
                default:
                    EmptyView()
                }
                
                // Menu Abajo
                HStack {
                    ForEach(0..<4, id: \.self) { numeros in
                        Button(action: {
                            self.indexSeleccionado = numeros
                        }, label: {
                            Image(systemName: iconos[numeros])
                                .font(.system(size: 24))
                                .frame(width: 60, height: 60)
                                .background(
                                    RoundedRectangle(cornerRadius: 30)
                                        .fill(numeros == indexSeleccionado ? Color.white : ColorHelper.color("#333333"))
                                )
                                .cornerRadius(30)
                                .foregroundColor(numeros == indexSeleccionado ? .black : .white)
                        })
                    }
                }//Fin Hstack
            }
            //Para no colocar titulo
            .navigationBarTitle("", displayMode: .inline)
            
            .background(ColorHelper.color("#333333"))
            
            //Menu Arriba
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        authenticationViewModel.logout()
                    }, label: {
                        Text("Logout")
                            .underline()
                    })
                    
                }
            }
            
        }.accentColor(ColorHelper.color("#333333"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(authenticationViewModel: AuthenticationViewModel())
    }
}
