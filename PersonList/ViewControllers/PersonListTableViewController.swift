//
//  PersonListTableViewController.swift
//  PersonList
//
//  Created by Васильева Ольга on 29.12.2021.
//

import UIKit

class PersonListTableViewController: UITableViewController {

    var personList: [Person] = []
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = personList[indexPath.row].fullName
        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let personVC = segue.destination as? PersonViewController {
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let person = personList[indexPath.row]
            personVC.person = person
        }
    }
    

}
