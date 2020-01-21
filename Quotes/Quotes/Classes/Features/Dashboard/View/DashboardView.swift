//
//  DashboardView.swift
//  Quotes
//
//  Created by Mihai Pantiru on 14/01/2020.
//  Copyright © 2020 Agile. All rights reserved.
//

import SwiftUI
import Foundation

struct DashboardView: View {
    @ObservedObject var viewModel = QuotesViewModel()
    
    var body: some View {
        ZStack{
            Color("primaryColor")
            VStack(spacing: 50) {
                QuotesText(quote:self.$viewModel.quote)
                NextQuoteButton()
            }
        }.edgesIgnoringSafeArea(Edge.Set([.all]))
        .onAppear(perform: self.viewModel.loadData)
        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DashboardView()
                .environment(\.colorScheme, .light)
            DashboardView()
                .environment(\.colorScheme, .dark)
        }
    }
}

struct Quote: Codable {
    let id: Int
    let text: String
}

