//
//  Item.swift
//  BuildingExpandableListWithHierarchicalData
//
//  Created by ramil on 20.07.2020.
//

import Foundation

struct Item: Identifiable {
    
    let id = UUID()
    let title: String
    let children: [Item]?
}
