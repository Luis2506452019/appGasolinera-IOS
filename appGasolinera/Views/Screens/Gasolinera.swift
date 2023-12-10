//
//  Gasolinera.swift
//  appGasolinera
//
//  Created by MacOsX on 12/9/23.
//

import SwiftUI

struct Gasolinera: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let location: String
    
    //Money
    let diesel: String
    let regular: String
    let especial: String
}

struct GasolineraList {
    static let listGas = [
        Gasolinera(imageName: "estacion_puma", title: "Gasolinera: ", description: "Puma, La Gloria", location: "Av.Peralta No.1208", diesel: "4.78", regular: "5.00", especial: "4.80"),
        
        Gasolinera(imageName: "estacion_uno", title: "Gasolinera: ", description: "Puma, Apopa", location: "Blvd.Venezuela, Barr.Lourdes", diesel: "4.78", regular: "5.00", especial: "4.80"),
        
        Gasolinera(imageName: "estacion_texaco", title: "Gasolinera: ", description: "Puma, Constitución", location: "Col.Flor Blanca", diesel: "4.78", regular: "5.00", especial: "4.80")
    ]
}
