//
//  EstacionView.swift
//  appGasolinera
//
//  Created by MacOsX on 11/5/23.
//

import SwiftUI

struct EstacionView: View {
    var gasolineras: [Gasolinera] = GasolineraList.listGas
    
    var body: some View {
        
        NavigationView{
                List(gasolineras, id: \.id) { gasolinera in
                    NavigationLink(destination: GasolineraDetailView(gasolinera: gasolinera),
                        label: {
                           GasolineraCell(gasolinera: gasolinera)
                        })
                }.background(ColorHelper.color("#333333").ignoresSafeArea())
                .onAppear{
                    UITableView.appearance().backgroundColor = .clear
                }
            
        }
        .navigationBarHidden(true)
        .navigationBarTitle("", displayMode: .inline)
        
        
    }
}

struct GasolineraCell: View {
    var gasolinera: Gasolinera
    
    var body: some View{
        HStack {
            Image(gasolinera.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 70)
                .cornerRadius(4)
                .padding(.vertical, 4)
            
            VStack(alignment: .leading, spacing: 5) {
                Text (gasolinera.title)
                    .fontWeight(.semibold)
                    .font(.system(size:12))
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .minimumScaleFactor(0.5)
                Text (gasolinera.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .minimumScaleFactor(0.5)
            }
        }
    }
}

struct EstacionView_Previews: PreviewProvider {
    static var previews: some View {
        EstacionView()
    }
}
