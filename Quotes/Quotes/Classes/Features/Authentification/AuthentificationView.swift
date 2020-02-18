//
//  AuthentificationView.swift
//  Quotes
//
//  Created by Mihai Pantiru on 18/02/2020.
//  Copyright © 2020 Agile. All rights reserved.
//

import SwiftUI
import AuthenticationServices

struct AuthentificationView: View {
    var viewModel = AuthentificationViewModel()
    var body: some View {
        VStack{
            SigninWithAppleView().frame(
                maxWidth: 200,
                maxHeight: 42)
                .onTapGesture(perform: showAppleLogin)
        }
    }
    
    private func showAppleLogin() {
        let request = ASAuthorizationAppleIDProvider().createRequest()
        request.requestedScopes = [.fullName, .email]
        
        let controller = ASAuthorizationController(authorizationRequests: [request])
        controller.delegate = viewModel
        controller.performRequests()
    }
}

struct AuthentificationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthentificationView()
    }
}
