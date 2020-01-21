//
//  QuotesViewModel.swift
//  Quotes
//
//  Created by Mihai Pantiru on 21/01/2020.
//  Copyright © 2020 Agile. All rights reserved.
//

import Foundation
import SwiftUI

class QuotesViewModel: ObservableObject {
    @Published var quote: Quote?
    
    func loadData() {
        let url = URL(string: "https://agile-quotes.herokuapp.com/api/quotes/1")!
        
        let request = URLRequest.init(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(Quote.self, from: data) {
                    DispatchQueue.main.async {
                        self.quote = decodedResponse
                    }

                    return
                }
            }
        }.resume()
    }
    
    func loadRandomQuote() {
        
    }
}
