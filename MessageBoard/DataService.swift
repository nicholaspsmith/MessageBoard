//
//  DataService.swift
//  MessageBoard
//
//  Created by Nick on 1/5/16.
//  Copyright © 2016 Nick. All rights reserved.
//

import Foundation
import UIKit

class DataService {
    // static - only 1 instance will exist
    static let instance = DataService()
    
    let KEY_POSTS = "posts"
    private var _loadedPosts = [Post]()
    
    var loadedPosts: [Post] {
        return _loadedPosts
    }
    
    func savePosts() {
        // Turn array into data so that it can be stored
        let postsData = NSKeyedArchiver.archivedDataWithRootObject(_loadedPosts)
        // Save data with key "posts"
        NSUserDefaults.standardUserDefaults().setObject(postsData, forKey: KEY_POSTS)
    }
    
    func loadPosts() {
        if let postsData = NSUserDefaults.standardUserDefaults().objectForKey(KEY_POSTS) as? NSData {
            if let postsArray = NSKeyedUnarchiver.unarchiveObjectWithData(postsData) as? [Post] {
                _loadedPosts = postsArray
            }
        }
        
        // Create a notification stating that posts are lloaded
        NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "postsLoaded", object: nil))
    }
    
    func saveImageAndCreatePath(image: UIImage) {
        
    }
    
    func imageForPath(path: String) {
        
    }
    
    func addPost(post: Post) {
        _loadedPosts.append(post)
        savePosts()
        loadPosts()
    }
}