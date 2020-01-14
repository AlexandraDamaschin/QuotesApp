//
//  QuotesText.swift
//  Quotes
//
//  Created by Mihai Pantiru on 14/01/2020.
//  Copyright © 2020 Agile. All rights reserved.
//

import SwiftUI

struct QuotesText: View {
    var body: some View {
        Text("Happy day!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .lineLimit(30)
            .padding(.all)
    }
}

struct QuotesText_Previews: PreviewProvider {
    static var previews: some View {
        QuotesText()
    }
}
