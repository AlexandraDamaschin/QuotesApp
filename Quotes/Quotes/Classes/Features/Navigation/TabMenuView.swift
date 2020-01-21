//
//  TabMenuView.swift
//  Quotes
//
//  Created by Mihai Pantiru on 21/01/2020.
//  Copyright © 2020 Agile. All rights reserved.
//

import SwiftUI

struct TabMenuView: View {
    var body: some View {
        TabView {
            DashboardView()
             DashboardView()
             DashboardView()
             DashboardView()
             DashboardView()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct TabMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TabMenuView()
    }
}
