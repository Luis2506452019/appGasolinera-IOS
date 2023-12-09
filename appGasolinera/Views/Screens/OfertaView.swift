//
//  OfertaView.swift
//  appGasolinera
//
//  Created by MacOsX on 11/5/23.
//

import SwiftUI

struct OfertaView: View {
    var body: some View {
        ZStack {
            ColorHelper.color("#333333").ignoresSafeArea()
            VStack {
                Text("Contenido de Oferta")
                    .font(.title)
                    .padding()
            }
        }
    }
}

struct OfertaView_Previews: PreviewProvider {
    static var previews: some View {
        OfertaView()
    }
}
