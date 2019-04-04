//
//  DetailPopoverTableViewController.swift
//  Popover Experimentation =
//
//  Created by Daniel Yount on 4/4/19.
//  Copyright © 2019 Daniel Yount. All rights reserved.
//

import UIKit

class DetailPopoverTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setRightBarButton()
//        self.title = "Details"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailBasicCell", for: indexPath)
        cell.textLabel?.text = "Option"
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
    }

    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DetailPopoverTableViewController {
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "detailBasicCell")
    }

    @objc func changeNavBackButtonColor() {
//        self.navigationController?.navigationBar.backItem?.backBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.red], for: .normal)
//        self.navigationController?.navigationBar.backItem?.titleView?.backgroundColor = UIColor.blue
//        navigationController?.navigationBar.backItem?.leftBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.red], for: .normal)
//        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Hello", style: .plain, target: nil, action: nil)
//        self.navigationController?.navigationBar.backItem?.backBarButtonItem = UIBarButtonItem(title: "Hello", style: .plain, target: self, action: nil)
//        self.navigationController?.navigationBar.backItem?.backBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.red], for: .normal)
//        navigationController?.navigationBar.backItem?.backBarButtonItem?.tintColor = .red
        //        navigationController?.navigationBar.tintColor = UIColor.red -> This works for the buttons :/
    }

    func setRightBarButton() {
        let rightBarButton = UIBarButtonItem(title: "Press Me", style: .done, target: self, action: #selector(changeNavBackButtonColor))
        self.navigationItem.setRightBarButton(rightBarButton, animated: true)
    }
}
