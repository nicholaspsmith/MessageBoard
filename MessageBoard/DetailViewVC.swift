//
//  DetailViewVC.swift
//  MessageBoard
//
//  Created by Nick on 1/11/16.
//  Copyright © 2016 Nick. All rights reserved.
//

import UIKit

class DetailViewVC: UIViewController, UINavigationControllerDelegate {

    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var desc: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func detailCancelButtonPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
