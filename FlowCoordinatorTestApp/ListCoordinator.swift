//
//  ListCoordinator.swift
//  FlowCoordinatorTestApp
//
//  Created by Stepan Paholyk on 1/19/18.
//  Copyright © 2018 Stepan Paholyk. All rights reserved.
//

import Foundation
import UIKit

public class ListCoordinator: BaseTestAppFlowCoordinator {
        
    public override func start() {
        showDefaultListVC()
    }
    
    func showDefaultListVC() {
        let dataSource = ListDataSource(itemViewModels: currentItems)
        let listVC = ListViewController(dataSource: dataSource)
        self.rootViewContoller.pushViewController(listVC, animated: true)
    }
    
    func showDetailList() {
        
    }
    
    private var currentItems: [ItemViewModel] {
        let cat = ItemViewModel(item: Item(title: "😺", subtitle: "Cat"))
        let dog = ItemViewModel(item: Item(title: "🐶", subtitle: "Dog"))
        let brain = ItemViewModel(item: Item(title: "🧠", subtitle: "Brain"))
        let fox = ItemViewModel(item: Item(title: "🦊", subtitle: "Fox"))
        let omar = ItemViewModel(item: Item(title: "🦐", subtitle: "Omar"))
        
        return [cat, dog, brain, fox, omar]
    }
}
