//
//  GasolineraRepository.swift
//  appGasolinera
//
//  Created by MacOsX on 12/9/23.
//

import Foundation

final class GasolineraRepository {
    private let gasolineraDatasource: GasolineraDatasource
    
    init(gasolineraDatasource: GasolineraDatasource = GasolineraDatasource()) {
        self.gasolineraDatasource = gasolineraDatasource
    }
    
    func getAllGasolineras(completionBlock: @escaping (Result<[GasolineraModel], Error>) -> Void) {
        gasolineraDatasource.getAllGasolineras(completionBlock: completionBlock)
    }
}
