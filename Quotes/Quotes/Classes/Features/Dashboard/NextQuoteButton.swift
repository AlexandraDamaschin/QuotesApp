//
//  NextQuoteButton.swift
//  Quotes
//
//  Created by Mihai Pantiru on 14/01/2020.
//  Copyright © 2020 Agile. All rights reserved.
//

import SwiftUI

struct NextQuoteButton: View {
    var body: some View {
        Button(action: {}) {
            Text("Random quote")
                .fontWeight(.bold)
                .padding(.all)
                .foregroundColor(Color.black)
        }.background(Color.blue)
    }
}

struct NextQuoteButton_Previews: PreviewProvider {
    static var previews: some View {
        NextQuoteButton()
    }
}
