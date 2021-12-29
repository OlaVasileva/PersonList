//
//  DetailPersonListTableViewController.swift
//  PersonList
//
//  Created by Васильева Ольга on 29.12.2021.
//

import UIKit

class DetailPersonListTableViewController: UITableViewController {

    var personList: [Person]!
    var groupSection: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personList.forEach{person in
            groupSection.append(person.fullName)
        }
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        personList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = personList[indexPath.section].phone
            content.image = UIImage(systemName: "phone.fill")
        } else {
            content.text = personList[indexPath.section].email
            content.image = UIImage(systemName: "mail")
        }
        
        cell.contentConfiguration = content
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = groupSection[section]
        return section
    }
    

}
