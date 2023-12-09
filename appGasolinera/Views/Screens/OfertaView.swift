//
//  OfertaView.swift
//  appGasolinera
//
//  Created by MacOsX on 11/5/23.
//

import SwiftUI

struct OfertaView: View {
    var body: some View {
        
        ScrollView {
            ZStack{
                ColorHelper.color("#333333").ignoresSafeArea()
                
                VStack {
                    
                    HStack {
                        VStack{
                            Text("Gasolineras UNO")
                                .foregroundColor(.white)
                                .font(.system(size:15))
                                .padding()

                            Image("uno")
                                .resizable()
                                .frame(width: 123, height: 132)
                        }
                        VStack {
                            Text("Obten el 20%\nen tu siguiente recarga")
                                .foregroundColor(.white)
                                .font(.system(size:16))
                                .multilineTextAlignment(.center)
                            Button(action: {
                                //En Construccion...
                            }) {
                                Text("REGISTRA TU CUPON")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .font(.system(size:13))
                                    .padding(8)
                                    .background(Color.green)
                            }
                        }
                    }
                    Text("Más ofertas en:")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding()
                    
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: 240, height: 3)
                    
                    HStack {
                        Button(action: {
                            //En Construccion...
                        }) {
                            Image("puma")
                                .resizable()
                                .frame(width: 111, height: 117)
                                .padding()
                        }
                        Button(action: {
                            //En Construccion...
                        }) {
                            Image("texaco")
                                .resizable()
                                .frame(width: 109, height: 134)
                                .padding()
                        }
                    }
                }//.padding()
                
            }
        }

    }
}

struct OfertaView_Previews: PreviewProvider {
    static var previews: some View {
        OfertaView()
    }
}
