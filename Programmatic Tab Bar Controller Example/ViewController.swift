//
//  ViewController.swift
//  Programmatic Tab Bar Controller Example
//
//  Created by Grant Elliott on 9/13/18.
//  Copyright © 2018 Grant Elliott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button: UIButton = UIButton(frame: self.view.bounds)
        button.backgroundColor = .clear
        button.setTitleColor(.blue, for: .normal)
        button.setTitleColor(.orange, for: .highlighted)
        button.setTitleColor(.orange, for: .selected)
        button.setTitle("Child Controller", for: .normal)
        button.addTarget(self, action: #selector(self.pushToChildViewController), for: .touchUpInside)
        
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction private func pushToChildViewController(_ sender: Any?) {
        let childViewController = UIViewController()
        childViewController.view.backgroundColor = UIColor.darkGray
        
        self.navigationController?.pushViewController(childViewController, animated: true)
    }
}

