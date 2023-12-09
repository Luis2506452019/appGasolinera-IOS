//
//  HomeView.swift
//  appGasolinera
//
//  Created by MacOsX on 11/5/23.
//
import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            ColorHelper.color("#333333").ignoresSafeArea()
            VStack {
                Text("Contenido de Home")
                    .font(.title)
                    .padding()
            }
        }
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
