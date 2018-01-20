//
//  RootCoordinator.swift
//  FlowCoordinatorTestApp
//
//  Created by Stepan Paholyk on 1/19/18.
//  Copyright © 2018 Stepan Paholyk. All rights reserved.
//

import Foundation
import UIKit

final public class RootCoordinator: BaseTestAppFlowCoordinator {
    
    public override func start() {
        // Here we can introduce any other state dependent cycle
        // Like is network available or is user authorized
        // That leads us to another vc flow
        showList()
    }
    
    private func showList() {
        let listCoordinator = ListCoordinator(rootViewController: rootViewContoller)
        
        add(childCoordinator: listCoordinator)
        listCoordinator.start()
    }
}
