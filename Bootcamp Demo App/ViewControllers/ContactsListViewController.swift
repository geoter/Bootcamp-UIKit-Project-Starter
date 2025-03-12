//
//  ContactsListViewController.swift
//  Bootcamp Demo App
//
//  Created by George Termentzoglou on 10/3/25.
//

import UIKit

class ContactsListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var contacts: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(ContactsListTableViewCell.self, forCellReuseIdentifier: "ContactCell")
        loadContacts()
    }
    
    private func loadContacts() {
        contacts.append("Maria")
        contacts.append("Kostas")
    }
}

extension ContactsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as? ContactsListTableViewCell else { return UITableViewCell() }
        cell.textLabel?.text = contacts[indexPath.row]
        cell.name = "ttt"
        cell.backgroundColor = .yellow
        return cell
    }
}

extension ContactsListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(contacts[indexPath.row])
    }
}
