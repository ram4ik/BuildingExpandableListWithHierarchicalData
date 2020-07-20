//
//  ContentView.swift
//  BuildingExpandableListWithHierarchicalData
//
//  Created by ramil on 20.07.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SidebarList(items: Item.stubs)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
