//
//  TabBarViewController.swift
//  PersonList
//
//  Created by Васильева Ольга on 29.12.2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    let personList = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for viewController in viewControllers! {
            if let navigationVC = viewController as? UINavigationController {
                if let personListVC = navigationVC.topViewController as? PersonListTableViewController {
                    personListVC.personList = personList
                } else if let detailPersonListVC = navigationVC.topViewController as? DetailPersonListTableViewController {
                    detailPersonListVC.personList = personList
                }
            }
                        
        }
    }
    
 
}
