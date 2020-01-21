//
//  NextQuoteButton.swift
//  Quotes
//
//  Created by Mihai Pantiru on 14/01/2020.
//  Copyright © 2020 Agile. All rights reserved.
//

import SwiftUI

struct NextQuoteButton: View {
    @ObservedObject var viewModel: QuotesViewModel
    
    var body: some View {
        Button(action: {
            self.viewModel.loadRandomQuote()
        }) {
            Text("Random quote")
                .fontWeight(.bold)
                .padding(.all)
                .foregroundColor(Color.black)
        }.background(Color.blue)
        .cornerRadius(25)
        .shadow(radius: 4)
    }
}

struct NextQuoteButton_Previews: PreviewProvider {
    @State static var quote = QuotesViewModel()
    static var previews: some View {
        NextQuoteButton(viewModel: quote)
    }
}
