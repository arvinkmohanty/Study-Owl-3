
//
//  EventsTableViewController.swift
//  Study Owl
//
//  Created by Brian Browdy on 7/12/17.
//  Copyright © 2017 Alexandra Stavrakos. All rights reserved.
//

import UIKit
import RealmSwift

class EventsTableViewController: UITableViewController {

    var objects = [Any]()
    let realm = try! Realm()
    lazy var events: Results<Event1> = {
        self.realm.objects(Event1.self)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for event in events {
           objects.append(event)
       }
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return objects.count
    }
    
    
    
    func insertNewEvent(_ sender: Any)
    {
        let alert = UIAlertController(title: "Add Event", message: nil, preferredStyle: .alert)
        alert.addTextField{ (textField) in
            textField.placeholder = "Title"
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
         let insertAction = UIAlertAction(title: "Add", style: .default) { (action) in
            let name = alert.textFields! [0] as UITextField
            let myEvent = Event1(name: name.text!)
            self.objects.append(myEvent)
            try! self.realm.write {
                self.realm.add(myEvent)
            }
            self.tableView.reloadData()
        }
        self.tableView.reloadData()
        alert.addAction(insertAction)
        present(alert, animated: true, completion: nil)
       
        
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            objects.remove(at: indexPath.row)
            try! self.realm.write{
                self.realm.delete(events)
            }
            self.tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    @IBAction func onAddTapped(_ sender: Any) {
        insertNewEvent((Any).self)
        self.tableView.reloadData()
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let object = objects[indexPath.row] as! Event1
        cell.textLabel!.text = object.event
        return cell
    }
    
}
