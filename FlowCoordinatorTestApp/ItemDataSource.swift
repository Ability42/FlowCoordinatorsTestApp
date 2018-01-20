//
//  ItemDataSource.swift
//  FlowCoordinatorTestApp
//
//  Created by Stepan Paholyk on 1/20/18.
//  Copyright © 2018 Stepan Paholyk. All rights reserved.
//

import Foundation
import UIKit

protocol ListDataSourceType {
    associatedtype Item
    func numberOfItems(in section: Int) -> Int
    func item(at indexPath: IndexPath) -> Item
    func numberOfSections() -> Int
}

protocol ListViewModelType: ListDataSourceType {
    associatedtype Item = ItemViewModel
    var items: [ItemViewModel] { get }
}

class ListViewModel: ListViewModelType {
    let items: [ItemViewModel]
    init(items: [ItemViewModel]) {
      self.items = items
    }
    
    func numberOfSections() -> Int {
        return 1
    }
    
    func numberOfItems(in section: Int) -> Int {
        return items.count
    }
    
    func item(at indexPath: IndexPath) -> ItemViewModel {
        return items[indexPath.row]
    }

    
}

class ListDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    open var tableView: UITableView? {
        didSet {
            tableView?.register(UINib.init(nibName: "ItemCell", bundle: nil), forCellReuseIdentifier: "ItemCell")

            tableView?.delegate = self
            tableView?.dataSource = self
        }
    }

    let items: [ItemViewModel]
    
    init(itemViewModels: [ItemViewModel]) {
        self.items = itemViewModels
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell") as? ItemCell else {
            return UITableViewCell()
        }
        cell.viewModel = items[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
}

extension ListDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}
