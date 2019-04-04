//
//  MyNavController.swift
//  Popover Experimentation =
//
//  Created by Daniel Yount on 4/4/19.
//  Copyright © 2019 Daniel Yount. All rights reserved.
//

import UIKit

class MyNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UIBarButtonItem.appearance(whenContainedInInstancesOf: [MyNavController.self]).tintColor = .red
        // Do any additional setup after loading the view.
    }

}
