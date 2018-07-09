//
//  ViewController.swift
//  aging_people
//
//  Created by J on 7/09/2018.
//  Copyright © 2018 Jman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var people = ["George", "Betty", "Fran", "John", "Chris", "Jimmy", "Bob"]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)

        cell.textLabel?.text = people[indexPath.row]
        cell.detailTextLabel?.text = "\(arc4random_uniform(95 - 5))"
    
        cell.backgroundColor = UIColor.lightGray

        return cell
    }
    
}

