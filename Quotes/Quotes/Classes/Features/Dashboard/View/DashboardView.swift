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
                VStack {
                    Spacer()
                QuotesText(quote: self.$viewModel.quote)
                    Spacer()
                NextQuoteButton(viewModel: self.viewModel)
                }
                Spacer()
                VStack() {
                    Spacer(minLength: 20)
                    QuoteInteractionMenu()
                    Spacer(minLength: 20)
                }.frame(maxHeight: 100)
                
            }
        }.edgesIgnoringSafeArea(Edge.Set([.all]))
        .onAppear(perform: self.viewModel.loadData)
            .tabItem {
                Text("Dashboard")
        }
        
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

