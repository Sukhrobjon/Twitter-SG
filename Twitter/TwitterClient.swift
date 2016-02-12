//
//  TwitterClient.swift
//  Twitter
//
//  Created by Sukhrobjon Golibboev on 2/12/16.
//  Copyright © 2016 ccsf. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

let twitterConsumerKey = "qiiUvXfFYFgKSAc7KRYugKvGI"
let twitterConsumerSecret = "vLhEmu8I53fH1n6JHF5a5VXy12qDeubOEYpa5DFUOukllnJ6nT"
let twitterBaseURL = NSURL(string: "http://api.twitter.com")


class TwitterClient: BDBOAuth1SessionManager {
    
    class var sharedInstance: TwitterClient {
        struct Static {
            static let instance = TwitterClient(baseURL: twitterBaseURL,
                consumerKey: twitterConsumerKey,
                consumerSecret: twitterConsumerSecret)

        }
        
        return Static.instance
    }
}
