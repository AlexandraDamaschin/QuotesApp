//
//  AuthentificationViewModel.swift
//  Quotes
//
//  Created by Mihai Pantiru on 18/02/2020.
//  Copyright © 2020 Agile. All rights reserved.
//

import Foundation
import AuthenticationServices

class AuthentificationViewModel:NSObject, ASAuthorizationControllerDelegate {
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        print(authorization)
       if let credential = authorization.credential as? ASAuthorizationAppleIDCredential {
            print("I'm a robot \(credential.realUserStatus.rawValue)")
            print("Name \(String(describing: credential.fullName))")
            print("Token \(credential.user)")
            print("Email \(credential.email ?? "")")
        }
    }
}
