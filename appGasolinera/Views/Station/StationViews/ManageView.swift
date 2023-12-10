//
//  ManageView.swift
//  appGasolinera
//
//  Created by MacOsX on 12/9/23.
//

import SwiftUI

struct ManageView: View {
    @State private var nombre = ""
    @State private var sucursal = ""
    @State private var ubicacion = ""
    
    @State private var diesel = ""
    @State private var regular = ""
    @State private var especial = ""
    
    var body: some View {
        
        ZStack {
            ColorHelper.color("#333333").ignoresSafeArea()
            Image("gasInsert")
                .resizable()
                .scaledToFit()
                .edgesIgnoringSafeArea(.all)
            ScrollView(.vertical) {
                VStack {
                    Spacer()
                    HStack {
                        Text("Nombre: ")
                            .foregroundColor(.white)
                            .font(.title3)
                            .frame(width: 95)
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: 1)
                            TextField("", text: $nombre)
                                .foregroundColor(.white)
                                .background(Color.clear)
                        }
                        .frame(width: 150, height: 40)
                    }
                    .padding()
                    HStack {
                        Text("Sucursal: ")
                            .foregroundColor(.white)
                            .font(.title3)
                            .frame(width: 95)
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: 1)
                            TextField("", text: $sucursal)
                                .foregroundColor(.white)
                                .background(Color.clear)
                        }
                        .frame(width: 150, height: 40)
                    }
                    .padding()
                    HStack {
                        Text("Ubicacion: ")
                            .foregroundColor(.white)
                            .font(.title3)
                            .frame(width: 95)
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: 1)
                            TextField("", text: $ubicacion)
                                .foregroundColor(.white)
                                .background(Color.clear)
                        }
                        .frame(width: 150, height: 40)
                    }
                    .padding()
                    HStack {
                        VStack {
                            Text("Tipo:")
                                .foregroundColor(.white)
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(width:100)
                                .padding()
                            Text("Diesel")
                                .foregroundColor(.white)
                                .frame(width:100, height:37)
                            Text("Regular")
                                .foregroundColor(.white)
                                .frame(width:100, height:37)
                            Text("Especial")
                                .foregroundColor(.white)
                                .frame(width:100, height:37)
                        }
                        VStack {
                            Text("Precio:")
                                .foregroundColor(.white)
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(width:100)
                                .padding()
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.white, lineWidth: 1)
                                TextField("$", text: $diesel)
                                    .foregroundColor(.white)
                                    .background(Color.clear)
                            }
                            .frame(width: 100, height: 35)
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.white, lineWidth: 1)
                                TextField("$", text: $regular)
                                    .foregroundColor(.white)
                                    .background(Color.clear)
                            }
                            .frame(width: 100, height: 35)
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.white, lineWidth: 1)
                                TextField("$", text: $especial)
                                    .foregroundColor(.white)
                                    .background(Color.clear)
                            }
                            .frame(width: 100, height: 35)
                        }
                    }.padding()
                    Spacer()
                    HStack(alignment: .center, spacing:10){
                        Button(action: {
                            //acciones
                        }) {
                            Text("AGREGAR")
                                .bold()
                                .foregroundColor(.black)
                                .padding()
                                .multilineTextAlignment(.center)
                                .lineLimit(1)
                                .background(Color.white)
                                .cornerRadius(8)
                        }
                        Button(action: {
                            //acciones
                        }) {
                            Text("EDITAR")
                                .bold()
                                .foregroundColor(.black)
                                .padding()
                                .multilineTextAlignment(.center)
                                .lineLimit(1)
                                .background(Color.white)
                                .cornerRadius(8)
                        }
                        Button(action: {
                            //acciones
                        }) {
                            Text("ELIMINAR")
                                .bold()
                                .foregroundColor(.black)
                                .padding()
                                .multilineTextAlignment(.center)
                                .lineLimit(1)
                                .background(Color.white)
                                .cornerRadius(8)
                        }
                    }
                    Spacer()
                }
            }
        }
        .padding()
        .background(ColorHelper.color("#333333"))
        
    }
}

struct ManageView_Previews: PreviewProvider {
    static var previews: some View {
        ManageView()
    }
}
