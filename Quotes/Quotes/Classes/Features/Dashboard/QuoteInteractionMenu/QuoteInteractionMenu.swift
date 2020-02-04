//
//  QuoteInteractionMenu.swift
//  Quotes
//
//  Created by Mihai Pantiru on 04/02/2020.
//  Copyright © 2020 Agile. All rights reserved.
//

import SwiftUI

struct QuoteInteractionMenu: View {
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
                print("Button")
                //todo: set image .fill
            }) {
                Image(systemName: "square.and.arrow.up")
                Text("Share")
            }
            Spacer()
        }
    }
}

struct QuoteInteractionMenu_Previews: PreviewProvider {
    static var previews: some View {
        QuoteInteractionMenu()
    }
}
