//
//  ViewController.swift
//  Popover Experimentation =
//
//  Created by Daniel Yount on 4/4/19.
//  Copyright © 2019 Daniel Yount. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!

    @IBAction func buttonPressed(_ sender: Any) {
        let popoverVC = PopoverTableViewController()
        let nav = UINavigationController(rootViewController: popoverVC)
        nav.modalPresentationStyle = .popover
        nav.popoverPresentationController?.sourceRect = button.bounds
        nav.popoverPresentationController?.sourceView = button
        nav.preferredContentSize = CGSize(width: 350, height: 500)
        popoverVC.title = "Save"
        navigationController?.present(nav, animated: true, completion: nil)
        popoverVC.title = "Popover Content"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Popover Experiment"
    }


}

