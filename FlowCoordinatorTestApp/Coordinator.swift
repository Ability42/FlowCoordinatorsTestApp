//
//  Coordinator.swift
//  FlowCoordinatorTestApp
//
//  Created by Stepan Paholyk on 1/19/18.
//  Copyright © 2018 Stepan Paholyk. All rights reserved.
//

import Foundation
import UIKit

public class BaseFlowCoordinator<VC: UIViewController> {
    
    public let rootViewContoller: VC
    private var childCoordinators: [BaseFlowCoordinator] = []
    public init(rootViewController: VC) {
        self.rootViewContoller = rootViewController
    }
    
    public func start() {
        fatalError("Trying to call default implementation from base class")
    }
    
    public func add(childCoordinator: BaseFlowCoordinator) {
        childCoordinators.append(childCoordinator)
    }
    
    public func remove(childCoordinator: BaseFlowCoordinator) {
        if let index = childCoordinators.index(where: { $0 === childCoordinator }) {
            childCoordinators.remove(at: index)
        } else {
            fatalError("Trying to remove not existing child coordinator")
        }
    }
}

public class BaseTestAppFlowCoordinator: BaseFlowCoordinator<UINavigationController> { }
