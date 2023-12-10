//
//  GasolineraDetailView.swift
//  appGasolinera
//
//  Created by MacOsX on 12/9/23.
//

import SwiftUI

struct GasolineraDetailView: View {
    var gasolinera: Gasolinera
    
    var body: some View {
        
        ScrollView(){
            
            ZStack(){
                ColorHelper.color("#333333").ignoresSafeArea()
                
                VStack (spacing: 20){
                    
                    Text(gasolinera.title+""+gasolinera.description)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    Image(gasolinera.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 90)
                        .cornerRadius(12)
                    
                    Text("Ubicación:")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal)
                    
                    Text(gasolinera.location)
                        .font(.body)
                        .padding(.horizontal)
                    
                    VStack(alignment: .center, spacing: 35) {
                        HStack(spacing: 40) {
                            Text ("Tipo:")
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            Text("Precio:")
                                .font(.title3)
                                .fontWeight(.semibold)
                        }
                        
                        HStack(spacing: 40) {
                            Text ("Diesel")
                                .font(.subheadline)
                                .foregroundColor(.black)
                            
                            Text("$ \(gasolinera.diesel)")
                                .font(.subheadline)
                                .foregroundColor(.black)
                        }
                        
                        HStack(spacing: 40) {
                            Text ("Regular")
                                .font(.subheadline)
                                .foregroundColor(.black)

                            Text("$ \(gasolinera.regular)")
                                .font(.subheadline)
                                .foregroundColor(.black)
                        }
                        
                        HStack(spacing: 40) {
                            Text ("Especial")
                                .font(.subheadline)
                                .foregroundColor(.black)

                            Text("$ \(gasolinera.especial)")
                                .font(.subheadline)
                                .foregroundColor(.black)
                        }
                    }
                }
                .padding()
                .background(Color.white)
            }.padding()
            
        }
        .padding()
        .navigationBarTitle("", displayMode: .inline)
        .background(ColorHelper.color("#333333"))
        
    }
}

struct GasolineraDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GasolineraDetailView(gasolinera: GasolineraList.listGas.first!)
    }
}
