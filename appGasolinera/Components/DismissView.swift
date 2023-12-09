//
//  DismissView.swift
//  appGasolinera
//
//  Created by MacOsX on 12/8/23.
//

import SwiftUI

struct DismissView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        HStack{
            Spacer()
            Button("Cerrar"){
                presentationMode.wrappedValue.dismiss()
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(8)
            .padding(.horizontal, 20)
            .foregroundColor(.white)
        }
    }
}

struct DismissView_Previews: PreviewProvider {
    static var previews: some View {
        DismissView()
    }
}
