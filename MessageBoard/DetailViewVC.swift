//
//  DetailViewVC.swift
//  MessageBoard
//
//  Created by Nick on 1/11/16.
//  Copyright © 2016 Nick. All rights reserved.
//

import UIKit

class DetailViewVC: UIViewController {
    
    var passedData: [String]!
    var indexInPosts: Int!

    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var desc: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.indexInPosts = Manager.dataToPass
        
        if let i = indexInPosts {
            let cell = DataService.instance.loadedPosts[i]
            postTitle.text = cell.title
            desc.text = cell.postDesc
            image.image = UIImage(named: cell.imagePath)
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        self.indexInPosts = Manager.dataToPass
        
        if let i = indexInPosts {
            let cell = DataService.instance.loadedPosts[i]
            postTitle.text = cell.title
            desc.text = cell.postDesc
            image.image = UIImage(named: cell.imagePath)
        }
    }
    
    @IBAction func detailCancelButtonPressed(sender: AnyObject) {
        self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}
