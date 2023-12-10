//
//  EstacionView.swift
//  appGasolinera
//
//  Created by MacOsX on 11/5/23.
//

import SwiftUI

struct EstacionView: View {
    @ObservedObject var gasolineraViewModel: GasolineraViewModel
    
    @State private var showingDetail = false
    
    var body: some View {
        
        NavigationView{

            List {
                ForEach(gasolineraViewModel.gasolineras) { gasolinera in
                    
                    NavigationLink(destination: GasolineraDetailView(gasolinera: gasolinera),
                                   label: {
                        
                        HStack {
                            Image(gasolinera.nomb_gasolinera)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 70)
                                .cornerRadius(4)
                                .padding(.vertical, 4)
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text("Gasolinera: ")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 12))
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                                Text(gasolinera.nomb_gasolinera + ", " +  gasolinera.nomb_sucursal)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                            }//Fin VStack
                        }//Fin HStack
                        
                    }).onTapGesture {
                        gasolineraViewModel.selectedGasolinera = gasolinera
                        showingDetail.toggle() 
                    }
                    
                }//Fin ForEach
            }//Fin List
            .background(ColorHelper.color("#333333").ignoresSafeArea())
            .onAppear {
                UITableView.appearance().backgroundColor = .clear
                
                gasolineraViewModel.getAllGasolineras()
            }
            .navigationBarHidden(true)
            .navigationBarTitle("", displayMode: .inline)
            .overlay(
                NavigationLink(destination: ManageView()) {
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 50))
                        .foregroundColor(ColorHelper.color("#333333"))
                        .padding()
                    }
                .padding(.leading, 16)
                .padding(.bottom, 16), alignment: .bottomTrailing)
        }
        
        
    }
}

struct EstacionView_Previews: PreviewProvider {
    static var previews: some View {
        EstacionView(gasolineraViewModel: GasolineraViewModel())
    }
}
