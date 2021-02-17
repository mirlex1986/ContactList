//
//  ContactsTableViewController.swift
//  ContactList
//
//  Created by Алексей on 16.02.2021.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    var contacts = DataManager().makeContacts()

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactFullName", for: indexPath)
        
        let contact = contacts[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let contact = contacts[indexPath.row]
        performSegue(withIdentifier: "contactDetails", sender: contact)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactDetailVC = segue.destination as! ContactDetailViewController
        contactDetailVC.contact = sender as? Person
    }

}
