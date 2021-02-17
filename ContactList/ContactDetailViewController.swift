//
//  ContactDetailViewController.swift
//  ContactList
//
//  Created by Алексей on 17.02.2021.
//

import UIKit

class ContactDetailViewController: UIViewController {
    
    var contact: Person!

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLebel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = contact.phone
        emailLebel.text = contact.email
    }

}
