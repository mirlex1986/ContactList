//
//  ContactDetailsTableViewController.swift
//  ContactList
//
//  Created by Алексей on 17.02.2021.
//

import UIKit

class ContactDetailsTableViewController: UITableViewController {

    var contacts = DataManager().makeContacts()
    var cellCount = 0

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableDetailed", for: indexPath)
        
        if cellCount != 1 {
            cell.textLabel?.text = contacts[indexPath.section].phone
            cellCount += 1
        } else {
            cell.textLabel?.text = contacts[indexPath.section].email
            cellCount = 0
        }
        return cell
    }

}
