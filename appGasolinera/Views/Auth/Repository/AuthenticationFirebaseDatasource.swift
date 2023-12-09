//
//  AuthenticationFirebaseDatasource.swift
//  appGasolinera
//
//  Created by MacOsX on 12/8/23.
//

import Foundation
import FirebaseAuth

struct User {
    let email: String
}

final class AuthenticationFirebaseDatasource {
    
    //Sesion Activa
    func getCurrentUser() -> User? {
        guard let email = Auth.auth().currentUser?.email else {
            return nil
        }
        return .init(email: email)
    }
    
    //Para crear un nuevo usuario (Pantalla de Registrar)
    func createNewUser(email: String, password: String, completionBlock: @escaping (Result<User, Error>) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { authDataResult, error in
            if let error = error {
                print("Error creating a new user \(error.localizedDescription)")
                completionBlock(.failure(error))
                return
            }
            let email = authDataResult?.user.email ?? "No email"
            print("New user created with info \(email)")
            completionBlock(.success(.init(email: email)))
        }
    }
    
    //Para iniciar sesion (Pantalla Login)
    func login(email: String, password: String, completionBlock: @escaping (Result<User, Error>) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { authDataResult, error in
            if let error = error {
                print("Error login user \(error.localizedDescription)")
                completionBlock(.failure(error))
                return
            }
            let email = authDataResult?.user.email ?? "No email"
            print("User login with info \(email)")
            completionBlock(.success(.init(email: email)))
        }
    }
    
    //Cerrar Sesion
    func logout() throws{
        try Auth.auth().signOut()
    }
    
}
