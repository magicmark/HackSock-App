//
//  BlogPostViewController.swift
//  HackSoc App
//
//  Created by Mark Larah on 18/02/2015.
//  Copyright (c) 2015 Mark. All rights reserved.
//

import UIKit

class BlogPostViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var blogPostTable: UITableView!
    
    var posts = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // Load the table contents
        loadTableContents()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.posts.count
    }
   
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.textLabel!.text = self.posts[indexPath.row]
        return cell
    }
    
    // Function that I've created
    func loadTableContents() {
        // Set the data of out posts array
        self.posts = ["hello", "test", "12345"]
        // Tell iOS to reload the table
        self.blogPostTable.reloadData()
    }
    
}
