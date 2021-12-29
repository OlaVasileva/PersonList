//
//  PersonViewController.swift
//  PersonList
//
//  Created by Васильева Ольга on 29.12.2021.
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
        
    }

}
