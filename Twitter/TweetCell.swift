//
//  TweetCell.swift
//  Twitter
//
//  Created by Jeanne Nina on 2/22/16.
//  Copyright © 2016 Nina. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {

    @IBOutlet weak var profilePhotoView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var screennameLabel: UILabel!
    @IBOutlet weak var timestampLabel: UILabel!
    @IBOutlet weak var tweetLabel: UILabel!
    @IBOutlet weak var replyButton: UIButton!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var favoriteLabel: UILabel!
    @IBOutlet weak var retweetButton: UIButton!
    @IBOutlet weak var retweetLabel: UILabel!
    
    var tweet: Tweet! {
        didSet {
            
            profilePhotoView.setImageWithURL(NSURL(string: (tweet.user!.profileImageUrl)!)!)
            nameLabel.text = tweet.user?.name
            screennameLabel.text = "@\(tweet.user?.screenname!)"
            timestampLabel.text = tweet.createdAt
            tweetLabel.text = tweet.text
/*            favoriteLabel.text = "\(tweet.favoritesCount!)"
            retweetLabel.text = "\(tweet.retweetCount!)"
            
            if favoriteLabel.text == "0" {
                favoriteLabel.hidden = true
            }
            if retweetLabel.text == "0" {
                retweetLabel.hidden = true
            } */
        }
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        profilePhotoView.layer.cornerRadius = 5
        profilePhotoView.clipsToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func onFavorites(sender: AnyObject) {
        sender.setImage(UIImage(named: "like"), forState: UIControlState.Normal)
/*        if favoriteLabel.text == "0" {
            favoriteLabel.hidden = false
        }
        favoriteLabel.text = String(tweet.favoritesCount! + 1) */
    }
    
    @IBAction func onRetweet(sender: AnyObject) {
        sender.setImage(UIImage(named: "retweet"), forState: UIControlState.Normal)
/*        if retweetLabel.text == "0" {
            retweetLabel.hidden = false
        }
        retweetLabel.text = String(tweet.retweetCount! + 1) */
    }
    
    
}
