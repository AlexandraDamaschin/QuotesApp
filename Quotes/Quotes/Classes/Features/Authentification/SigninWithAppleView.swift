//
//  SigninWithAppleView.swift
//  Quotes
//
//  Created by Mihai Pantiru on 18/02/2020.
//  Copyright © 2020 Agile. All rights reserved.
//

import SwiftUI
import AuthenticationServices

final class SigninWithAppleView: UIViewRepresentable {
  func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
    return ASAuthorizationAppleIDButton(type: .signIn, style: .whiteOutline)
    }
  
  func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) {
  }
}
