//
//  QuoteInteractionMenu.swift
//  Quotes
//
//  Created by Mihai Pantiru on 04/02/2020.
//  Copyright © 2020 Agile. All rights reserved.
//

import SwiftUI

struct QuoteInteractionMenu: View {
    @State private var showShareSheet = false
    @Binding var quote: Quote?
    
    var body: some View {
        HStack() {
            Spacer()
            Button(action: {
                print("Button")
                //todo: set image .fill
            }) {
                Image(systemName: "heart")
                Text("Like")
            }
            
            Spacer()
            
            Button(action: {
                print("Button")
                //todo: set image .fill
            }) {
                Image(systemName: "square.and.arrow.down")
                Text("Save")
            }
            
            Spacer()
            
            Button(action: {
                print("Button")
                //todo: set image .fill
            }) {
                Image(systemName: "doc.on.doc")
                Text("Copy")
            }
            
            Spacer()
            
            Button(action: {
                self.showShareSheet = true
                //todo: set image .fill
            }) {
                Image(systemName: "square.and.arrow.up")
                Text("Share")
            }.sheet(isPresented: $showShareSheet) {
                ShareSheet(activityItems: [self.quote?.text ?? ""])
            }.disabled(self.quote?.text == nil)
            
            Spacer()
        }
    }
}

struct QuoteInteractionMenu_Previews: PreviewProvider {
    @State static var dummyQuote: Quote? = Quote(id: 1, text: "Dummy =")
    static var previews: some View {
        QuoteInteractionMenu(quote: $dummyQuote)
    }
}
