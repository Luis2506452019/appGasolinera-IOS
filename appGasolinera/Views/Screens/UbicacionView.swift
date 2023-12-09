//
//  UbicacionView.swift
//  appGasolinera
//
//  Created by MacOsX on 11/5/23.
//

import SwiftUI

struct UbicacionView: View {
    @State private var buscar = ""
    
    var body: some View {
        
        ScrollView {
            ZStack {
                ColorHelper.color("#333333").ignoresSafeArea()
                VStack(alignment: .leading) {
                    Text("Más ubicaciones")
                        .foregroundColor(.white)
                        .font(.system(size:20))
                        .fontWeight(.bold)
                        .padding()
                    HStack {
                        Text("Filtros")
                            .foregroundColor(.white)
                            .font(.system(size:16))
                            .padding()
                        TextField("", text: $buscar)
                            .padding(4)
                            .background(Color(.systemGray5))
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.red)
                            .frame(width: 50, height: 60)
                    }
                    HStack {
                        Image("puma")
                            .resizable()
                            .scaledToFit()
                            .frame(width:48, height: 48)
                            .padding()
                        VStack(alignment: .leading) {
                            Text("Puma Boulevard")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.system(size:16))
                                .padding()
                            HStack {
                                Text("8.64 km.")
                                    .foregroundColor(.red)
                                    .fontWeight(.semibold)
                                    .font(.system(size:13))
                                Text("Av.Peralta No.1208")
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .font(.system(size:13))
                            }
                        }
                    }
                    HStack {
                        Image("puma")
                            .resizable()
                            .scaledToFit()
                            .frame(width:48, height: 48)
                            .padding()
                        VStack(alignment: .leading) {
                            Text("Puma Lourdes")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.system(size:16))
                                .padding()
                            HStack {
                                Text("8.18 km.")
                                    .foregroundColor(.red)
                                    .fontWeight(.semibold)
                                    .font(.system(size:13))
                                Text("Blvd.Venezuela, Barr.Lourdes")
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .font(.system(size:13))
                                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                            }
                        }
                    }
                    HStack {
                        Image("puma")
                            .resizable()
                            .scaledToFit()
                            .frame(width:48, height: 48)
                            .padding()
                        VStack(alignment: .leading) {
                            Text("Puma Flor Blanca")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.system(size:16))
                                .padding()
                            HStack {
                                Text("9.18 km.")
                                    .foregroundColor(.red)
                                    .fontWeight(.semibold)
                                    .font(.system(size:13))
                                Text("Col.Flor Blanca")
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .font(.system(size:13))
                            }
                        }
                    }
                    HStack {
                        Image("puma")
                            .resizable()
                            .scaledToFit()
                            .frame(width:48, height: 48)
                            .padding()
                        VStack(alignment: .leading) {
                            Text("Puma Venezuela")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.system(size:16))
                                .padding()
                            HStack {
                                Text("8.64 km.")
                                    .foregroundColor(.red)
                                    .fontWeight(.semibold)
                                    .font(.system(size:13))
                                Text("Boulevard Venezuela")
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .font(.system(size:13))
                            }
                        }
                    }
                }
            }
        }
        
    }
}

struct UbicacionView_Previews: PreviewProvider {
    static var previews: some View {
        UbicacionView()
    }
}
