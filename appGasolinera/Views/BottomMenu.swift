//
//  BottomMenu.swift
//  appGasolinera
//
//  Created by MacOsX on 11/5/23.
//

import SwiftUI

struct BottomMenu: View {
    @State private var selection = 0

    var body: some View {
        TabView(selection: $selection) {
            Text("Vista 1")
                .tabItem {
                    Image(systemName: "house")
                    Text("Inicio")
                } 
                .tag(0)
            Text("Vista 2")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                        Text("Buscar")
                    }
                .tag(1)
            Text("Vista 3")
                .tabItem {
                    Image(systemName: "person")
                        Text("Perfil")
                    }
                .tag(2)
        }
    }
}

struct BottomMenu_Previews: PreviewProvider {
    static var previews: some View {
        BottomMenu()
    }
}
