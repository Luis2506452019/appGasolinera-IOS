//
//  GasolineraDatasource.swift
//  appGasolinera
//
//  Created by MacOsX on 12/9/23.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct GasolineraModel: Decodable, Identifiable {
    @DocumentID var id: String?
    let nomb_gasolinera: String
    let nomb_sucursal: String
    let ubi_sucursal: String
    let tipo_diesel: String
    let tipo_regular: String
    let tipo_especial: String
}

final class GasolineraDatasource{
    private let database = Firestore.firestore()
    private let collection = "estaciones"
    
    func getAllGasolineras(completionBlock: @escaping (Result<[GasolineraModel], Error>) -> Void){
        database.collection(collection)
            .addSnapshotListener { query, error in
                if let error = error {
                    print("Error retrieving all stations \(error.localizedDescription)")
                    completionBlock(.failure(error))
                    return
                }
                guard let documents = query?.documents.compactMap({ $0 }) else {
                    completionBlock(.success([]))
                    return
                }
                let gasolineras = documents.map { try? $0.data(as: GasolineraModel.self) }
                                     .compactMap { $0 }
                completionBlock(.success(gasolineras))
            }
    }
}
