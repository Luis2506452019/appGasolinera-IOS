//
//  EstacionView.swift
//  appGasolinera
//
//  Created by MacOsX on 11/5/23.
//

import SwiftUI

struct EstacionView: View {
    var body: some View {
        ZStack {
            ColorHelper.color("#333333").ignoresSafeArea()
            VStack {
                Text("Contenido de Estacion")
                    .font(.title)
                    .padding()
            }
        }
    }
}

struct EstacionView_Previews: PreviewProvider {
    static var previews: some View {
        EstacionView()
    }
}
