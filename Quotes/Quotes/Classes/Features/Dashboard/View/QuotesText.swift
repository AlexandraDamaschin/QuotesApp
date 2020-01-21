//
//  QuotesText.swift
//  Quotes
//
//  Created by Mihai Pantiru on 14/01/2020.
//  Copyright © 2020 Agile. All rights reserved.
//

import SwiftUI

struct QuotesText: View {
    @Binding var quote: Quote?
    
    var body: some View {
        let message = self.quote?.text ?? ""
        return Text(message)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .lineLimit(30)
            .padding(.all)
    }
}

struct QuotesText_Previews: PreviewProvider {
    @State static var dummyQuote: Quote? = Quote(id: 1, text: "Dummy =")
    
    static var previews: some View {
        return QuotesText(quote: $dummyQuote)
    }
}
