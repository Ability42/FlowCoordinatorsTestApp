//
//  ItemViewModel.swift
//  FlowCoordinatorTestApp
//
//  Created by Stepan Paholyk on 1/20/18.
//  Copyright © 2018 Stepan Paholyk. All rights reserved.
//

import Foundation


public class ItemViewModel {
    let item: Item
    
    var title: String { return item.title }
    var subtitle: String { return item.subtitle }
    
    init(item: Item) {
        self.item = item
    }
}
