//
//  ItemCell.swift
//  FlowCoordinatorTestApp
//
//  Created by Stepan Paholyk on 1/20/18.
//  Copyright © 2018 Stepan Paholyk. All rights reserved.
//

import Foundation
import UIKit

public class ItemCell: UITableViewCell {
    
    public var viewModel: ItemViewModel? {
        didSet {
            self.titleLabel?.text = viewModel?.title
            self.subTitleLabel?.text = viewModel?.subtitle
        }
    }
    
    @IBOutlet public weak var titleLabel: UILabel?
    @IBOutlet public weak var subTitleLabel: UILabel?
    
    @IBAction func mainButtonPressed(_ sender: Any) {
    
    }
}
