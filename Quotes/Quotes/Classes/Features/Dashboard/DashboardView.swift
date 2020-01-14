//
//  DashboardView.swift
//  Quotes
//
//  Created by Mihai Pantiru on 14/01/2020.
//  Copyright © 2020 Agile. All rights reserved.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        ZStack{
            Color("primaryColor")
            VStack(spacing: 50) {
                QuotesText()
                NextQuoteButton()
            }
        }.edgesIgnoringSafeArea(Edge.Set([.all]))
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
