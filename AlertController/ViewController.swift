//
//  ViewController.swift
//  AlertController
//
//  Created by k_nagadou on 2017/12/20.
//  Copyright © 2017年 kzms33-4.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let alertController = UIAlertController(title: "AlertController",
                                           message: "alert",
                                           preferredStyle: .alert)
    let otherAction = UIAlertAction(title: "other", style: .default) { (action) in
        NSLog("\(action)")
    }
    let cancelAction = UIAlertAction(title: "cancel", style: .cancel) { (action) in
        NSLog("\(action)")
    }
    let destructiveAction = UIAlertAction(title: "destructive", style: .destructive) { (action) in
        NSLog("\(action)")
    }

    @IBAction func touchAlertButton(_ sender: UIButton) {
        presentAlertAction()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setAlertAction()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        presentAlertAction()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setAlertAction() {
        alertController.addAction(cancelAction)
        alertController.addAction(otherAction)
        alertController.addAction(destructiveAction)
    }
    
    func presentAlertAction() {
        alertController.preferredAction = otherAction
        
        present(alertController, animated: true, completion: nil)
    }


}

