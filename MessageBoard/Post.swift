//
//  Post.swift
//  MessageBoard
//
//  Created by Nick on 12/23/15.
//  Copyright © 2015 Nick. All rights reserved.
//

import Foundation

class Post {
    
    private var imagePath: String
    private var title: String
    private var postDesc: String
    
    init(imagePath: String, title: String, description: String) {
        self.imagePath = imagePath
        self.title = title
        self.postDesc = description
    }
}