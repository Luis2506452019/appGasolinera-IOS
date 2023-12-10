//
//  GasolineraViewModel.swift
//  appGasolinera
//
//  Created by MacOsX on 12/9/23.
//

import Foundation

final class GasolineraViewModel: ObservableObject {
    @Published var gasolineras: [GasolineraModel] = []
    @Published var messageError: String?
    @Published var selectedGasolinera: GasolineraModel? // Mantener la gasolinera seleccionada
    private let gasolineraRepository: GasolineraRepository
    
    init(gasolineraRepository: GasolineraRepository = GasolineraRepository()) {
        self.gasolineraRepository = gasolineraRepository
    }
    
    func getAllGasolineras() {
        gasolineraRepository.getAllGasolineras { [weak self] result in
            switch result {
            case .success(let gasolineraModels):
                self?.gasolineras = gasolineraModels
            case .failure(let error):
                self?.messageError = error.localizedDescription
            }
        }
    }
}
