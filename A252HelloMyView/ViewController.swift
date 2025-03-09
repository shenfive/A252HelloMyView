//
//  ViewController.swift
//  A252HelloMyView
//
//  Created by DannyShen on 2025/3/9.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myView = MyView(frame: CGRect(x: 50, y: 50, width: 150, height: 150))
        self.view.addSubview(myView)
        myView.theLabel.text = "Hello My View"
        
        
    }


}

