//
//  MainView.swift
//  appGasolinera
//
//  Created by MacOsX on 11/30/23.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var authenticationViewModel: AuthenticationViewModel
    
    @State private var IndexSeleccionado = 2
    let iconos = ["gauge", "map", "house", "gift"]

    var body: some View {
        NavigationView {
            VStack {
                switch IndexSeleccionado {
                case 0:
                    EstacionView()
                case 1:
                    UbicacionView()
                case 2:
                    HomeView(authenticationViewModel: AuthenticationViewModel())
                case 3:
                    OfertaView()
                default:
                    MainView(authenticationViewModel: AuthenticationViewModel())
                }

                HStack {
                    ForEach(0..<4, id: \.self) { numeros in
                        Spacer()
                        Button(action: {
                            self.IndexSeleccionado = numeros
                        }, label: {
                            Image(systemName: iconos[numeros])
                                .font(.system(size: 24))
                                .frame(width: 60, height: 60)
                                .background(
                                    RoundedRectangle(cornerRadius: 30)
                                        .fill(numeros == IndexSeleccionado ? Color.white : ColorHelper.color("#333333"))
                                )
                                .cornerRadius(30)
                                .foregroundColor(numeros == IndexSeleccionado ? .black : .white)
                        })
                    }
                    Spacer()
                }
            }
            .background(ColorHelper.color("#333333"))
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    // Lado izquierdo del toolbar
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Logout"){
                        authenticationViewModel.logout()
                    }
                }
            }

            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(authenticationViewModel: AuthenticationViewModel())
    }
}
