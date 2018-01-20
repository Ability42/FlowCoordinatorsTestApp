//
//  ViewController.swift
//  FlowCoordinatorTestApp
//
//  Created by Stepan Paholyk on 1/19/18.
//  Copyright © 2018 Stepan Paholyk. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate {

    @IBOutlet private weak var tableView: UITableView?
    
    let dataSource: ListDataSource
    
    public init(dataSource: ListDataSource) {
        self.dataSource = dataSource
        super.init(nibName: "ListViewController", bundle: nil)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource.tableView = tableView
        self.navigationItem.title = "Sample list"
    }
}

