//
//  GasolineraDetailView.swift
//  appGasolinera
//
//  Created by MacOsX on 12/9/23.
//

import SwiftUI

struct GasolineraDetailView: View {
    var gasolinera: GasolineraModel

    var body: some View {
        ScrollView {
            ZStack {
                ColorHelper.color("#333333").ignoresSafeArea()

                VStack(spacing: 20) {
                    Text("Gasolinera: " + gasolinera.nomb_gasolinera + ", " + gasolinera.nomb_sucursal)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

                    Image(gasolinera.nomb_gasolinera)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220, height: 90)
                        .cornerRadius(12)

                    Text("Ubicación:")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .padding(.horizontal)

                    Text(gasolinera.ubi_sucursal)
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

                    VStack(alignment: .center, spacing: 35) {
                        HStack(spacing: 40) {
                            Text("Tipo:")
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            Text("Precio:")
                                .font(.title3)
                                .fontWeight(.semibold)
                        }
                        
                        HStack(spacing: 40) {
                            Text("Diesel")
                                .font(.subheadline)
                                .foregroundColor(.black)
                            
                            Text("$" + gasolinera.tipo_diesel)
                                .font(.subheadline)
                                .foregroundColor(.black)
                        }
                        
                        HStack(spacing: 40) {
                            Text("Regular")
                                .font(.subheadline)
                                .foregroundColor(.black)
                            
                            Text("$" + gasolinera.tipo_regular)
                                .font(.subheadline)
                                .foregroundColor(.black)
                        }
                        
                        HStack(spacing: 40) {
                            Text("Especial:")
                                .font(.subheadline)
                                .foregroundColor(.black)
                            
                            Text("$" + gasolinera.tipo_especial)
                                .font(.subheadline)
                                .foregroundColor(.black)
                        }
                    }
                }
                .padding()
                .background(Color.white)
            }
            .padding()
            .navigationBarTitle("", displayMode: .inline)
            .background(ColorHelper.color("#333333"))
        }.background(ColorHelper.color("#333333"))
    }
}

struct GasolineraDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleGasolinera = GasolineraModel(
            id: "1",
            nomb_gasolinera: "Nombre Gasolinera",
            nomb_sucursal: "Nombre Sucursal",
            ubi_sucursal: "Ubicación",
            tipo_diesel: "Diesel",
            tipo_regular: "Regular",
            tipo_especial: "Especial"
        )

        return GasolineraDetailView(gasolinera: sampleGasolinera)
    }
}
