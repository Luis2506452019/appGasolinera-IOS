//
//  UbicacionView.swift
//  appGasolinera
//
//  Created by MacOsX on 11/5/23.
//

import SwiftUI

struct UbicacionView: View {
    var body: some View {
        ZStack {
            ColorHelper.color("#333333").ignoresSafeArea()
            VStack {
                Text("Contenido de Ubicacion")
                    .font(.title)
                    .padding()
            }
        }
    }
}

struct UbicacionView_Previews: PreviewProvider {
    static var previews: some View {
        UbicacionView()
    }
}
