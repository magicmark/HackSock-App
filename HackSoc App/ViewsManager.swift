//
//  ViewController.swift
//  HackSoc App
//
//  Created by Mark Larah on 18/02/2015.
//  Copyright (c) 2015 Mark. All rights reserved.
//

import UIKit

class ViewsManager: UIViewController {

    var blogPostViewController = BlogPostViewController(nibName: "BlogPostViewController", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.addChildViewController(blogPostViewController)
        self.view.addSubview(blogPostViewController.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

