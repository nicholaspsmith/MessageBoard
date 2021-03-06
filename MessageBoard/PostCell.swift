//
//  PostCell.swift
//  MessageBoard
//
//  Created by Nicholas Smith on 12/28/15.
//  Copyright © 2015 Nick. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        postImage.layer.cornerRadius = 10.0
        postImage.clipsToBounds = true
    }
    
    func configureCell(post: Post) {
        titleLbl.text = post.title
        descLbl.text = post.postDesc
        postImage.image = DataService.instance.imageForPath(post.imagePath)
    }

}
